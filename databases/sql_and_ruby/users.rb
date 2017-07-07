require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new('users.db')
$weekdays = {
  "sunday" => 0,
  "monday" => 1,
  "tuesday" => 2,
  "wednesday" => 3,
  "thursday" => 4,
  "friday" => 5,
  "saturday" => 6
}
$t = Time.now
$user_data = {
  name: '',
  username: '',
  email: '',
  task: '',
  location: '',
  due_date: 0
}

# create users and tasks table
create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    username VARCHAR(100),
    email VARCHAR(100)
  )
SQL

create_tasks_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    location VARCHAR(100),
    past_due BOOLEAN,
    due_date INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

db.execute(create_users_table_cmd)
db.execute(create_tasks_table_cmd)

def get_new_user_input
  puts "What is your name?"
  $user_data[:name] = gets.chomp.capitalize
  puts "What would you like your user name to be?"
  $user_data[:username] = gets.chomp.downcase
  puts "What is your email?"
  $user_data[:email] = gets.chomp
end

def create_user(db)
  db.execute("INSERT INTO users (name, username, email) VALUES (?, ?, ?)", $user_data[:name], $user_data[:username], $user_data[:email])
end

# method to get user_id
def get_user_id(db)
  db.execute("SELECT id FROM users WHERE username = '#{$user_data[:username]}'")[0][0]
end

# method to add task to tasks table
def enter_task(db)
  user_id = get_user_id(db)
  db.execute("INSERT INTO tasks (task, location, past_due, due_date, user_id) VALUES (?, ?, ?, ?, ?)", [$user_data[:task], $user_data[:location], $user_data[:past_due], $user_data[:due_date], user_id])
end

# method to display tasks
def display_tasks(db)
  user_id = get_user_id(db)
  tasks = db.execute("SELECT task, past_due FROM tasks WHERE user_id = #{user_id}")
  puts "Here are your tasks:"
  i = 1
  while i < tasks.length do
    tasks.each do |task|
      if task[1] === "false"
        puts "#{i} : #{task[0]}"
      elsif task[1] === "true"
        puts "#{i} : #{task[0]} (PAST DUE)"
      end
    i += 1
    end
  end
end

def get_user_tasks(db)
  user_id = get_user_id(db)
  tasks = db.execute("SELECT task FROM tasks where user_id = #{user_id}")
end

# method to get task id from user
def get_task_to_remove(db)
  user_tasks = get_user_tasks(db)
  puts "Please select a task:"
  user_tasks.each {|task| puts task}
  task_to_remove = gets.chomp
end

# method to remove task from tasks table
def remove_task(db)
  task_to_remove = get_task_to_remove(db)
  db.execute("DELETE FROM tasks WHERE task = '#{task_to_remove}'")
  display_tasks(db)
end

def update_past_due(db)
# update past_due column if task is now past due
  user_id = get_user_id(db)
  due_date_array = db.execute("SELECT due_date FROM tasks WHERE user_id = #{user_id}")
  $user_data[:due_date] = due_date_array[0][0]
  if !due_date_array.empty?
    if $t.wday > $user_data[:due_date]
      db.execute("UPDATE tasks SET past_due = 'true' WHERE user_id = #{user_id}")
    elsif $t.wday <= $user_data[:due_date]
      db.execute("UPDATE tasks SET past_due = 'false' WHERE user_id = #{user_id}")
    end
  end
end

def get_user_task_input
  puts "What is your task?"
  $user_data[:task] = gets.chomp
  puts "What is the location of the task?"
  $user_data[:location] = gets.chomp
  # grab due date INT from weekdays hash
  puts "What week day is the task due?"
  due_weekday = gets.chomp.downcase
  $user_data[:due_date] = $weekdays[due_weekday]
  if $t.wday <= $user_data[:due_date]
    $user_data[:past_due] = 'false'
  elsif $t.wday > $user_data[:due_date]
    $user_data[:past_due] = 'true'
  end
end

def add_task(db)
  get_user_task_input
  enter_task(db)
end

def add_task_loop
  response = ''
  until response === 'quit'
    puts "Would you like to add a task? ('y' or 'quit')"
    response = gets.chomp.downcase
    if response === 'y'
      add_task(db)
    end
    response
  end
end

def run_script(db)
  puts "What is your username? Enter 'none' if you're a new user"
  $user_data[:username] = gets.chomp
  if $user_data[:username] === 'none'
    get_new_user_input
    create_user(db)
    add_task_loop
  else
    puts "Welcome back #{$user_data[:username]}!"
    puts "Would you like to (choose a number): \n 1. view your tasks \n 2. add a new task \n 3. remove a task "
    number = gets.chomp.to_i
    if number === 1
      display_tasks(db)
    elsif number === 2
      add_task(db)
    elsif number === 3
      remove_task(db)
    end
  end
end

run_script(db)
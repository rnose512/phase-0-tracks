# require gems
require 'sqlite3'
require 'faker'

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

# create users and tasks table
create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    username VARCHAR(100),
    email VARCHAR(100),
    account_confirmed BOOLEAN
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

# method to add a user to users table
 def add_user(db)
    puts "What is your name?"
    input_name = gets.chomp
    puts "What would you like your user name to be?"
    input_username = gets.chomp
    puts "What is your email?"
    input_email = gets.chomp

    def create_user(db, username, name, email)
      db.execute("INSERT INTO users (name, username, email) VALUES (?, ?, ?)", [name, username, email])
    end

    create_user(db, input_username, input_name, input_email)
 end

# method to add task to tasks table
 def add_task(db, input)
   puts "What is your task?"
    task = gets.chomp
    puts "What is the location of the task?"
    location = gets.chomp
    # grab due date INT from weekdays hash
    puts "What week day is the task due?"
    due_weekday = gets.chomp.downcase
    due_date = $weekdays[due_weekday]
    if $t.wday <= due_date
      past_due = 'false'
    elsif $t.wday > due_date
      past_due = 'true'
    end
    # determine past due id due_date is past current date
    # get user id using username entered

    def enter_task(db, input, task, location, past_due, due_date)
      user_id_array = db.execute("SELECT id FROM users WHERE username = '#{input}'")
      user_id = user_id_array[0][0]
      db.execute("INSERT INTO tasks (task, location, past_due, due_date, user_id) VALUES (?, ?, ?, ?, ?)", [task, location, past_due, due_date, 1])
    end

    enter_task(db, input, task, location, past_due, due_date)
 end

 def print_tasks(db, input)
      # update past_due column if task is now past due
      user_id = db.execute("SELECT id FROM users WHERE username = '#{input}'")[0][0]
      due_date_array = db.execute("SELECT due_date FROM tasks WHERE user_id = #{user_id}")
      if !due_date_array.empty?
        puts "Here are your tasks:"
          due_date = due_date_array[0][0]
          if $t.wday > due_date
            db.execute("UPDATE tasks SET past_due = 'true' WHERE user_id = #{user_id}")
          elsif $t.wday <= due_date
            db.execute("UPDATE tasks SET past_due = 'false' WHERE user_id = #{user_id}")
        end
      end
      # list out tasks and whether they are past due or not
      tasks = db.execute("SELECT task, past_due FROM tasks WHERE user_id = #{user_id}")
      tasks.each do |task|
        if task[1] === "false"
          puts "#{task[0]} is not due yet"
        elsif task[1] === "true"
          puts "#{task[0]} is past due"
        end
      end
 end

# Ask user if they have an account
# IF they don't, get their info and insert into users table
# IF they do
  # ask them for their username
  # ask them for the task they want to input, due date, etc.
  # insert into tasks table
  # check if any of their tasks are past due

def run_script(db)
  puts "What is your username? Enter 'none' if you're a new user"
  input = gets.chomp
  if input === 'none'
    add_user(db)
  else
    puts "Welcome back #{input}!"
    print_tasks(db,input)
    puts "Would you like to add a task? (y/n)"
    response = gets.chomp
    if response === 'y'
      add_task(db, input)
    end
  end
end

run_script(db)

# db.execute("INSERT INTO users (username, name, email, account_confirmed) VALUES ('pogostick', 'Pogo Silian', 'pogo@pogostick.com', 'true')")

# users = db.execute("SELECT * FROM users")
# p users
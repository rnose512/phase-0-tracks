# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new('users.db')
# db.results_as_hash = true

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

 def add_task(db, input)
   puts "What is your task?"
    task = gets.chomp
    puts "What is the location of the task?"
    location = gets.chomp
    # grab due date INT from weekdays hash
    puts "What week day is the task due?"
    due_weekday = gets.chomp.downcase
    weekdays = {
      "sunday" => 0,
      "monday" => 1,
      "tuesday" => 2,
      "wednesday" => 3,
      "thursday" => 4,
      "friday" => 5,
      "saturday" => 6
    }
    due_date = weekdays[due_weekday]
    t = Time.now
    if t.wday <= due_date
      past_due = 'false'
    elsif t.wday > due_date
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

# Ask user if they have an account
# IF they do
  # ask them for their username
  # ask them for the task they want to input, due date, etc.
  # insert into tasks table
# IF they don't, get their info and insert into users table
def run_script(db)
  puts "What is your username? Enter 'none' if you're a new user"
  input = gets.chomp
  if input === 'none'
    add_user(db)
  else
    add_task(db, input)
  end
end

run_script(db)

# db.execute("INSERT INTO users (username, name, email, account_confirmed) VALUES ('pogostick', 'Pogo Silian', 'pogo@pogostick.com', 'true')")

# users = db.execute("SELECT * FROM users")
# p users
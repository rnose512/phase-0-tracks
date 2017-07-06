# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new('users.db')

create_table_cmd = <<-SQL
  CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    username VARCHAR(255),
    name VARCHAR(255),
    email VARCHAR(255),
    account_confirmed BOOLEAN
  )
SQL

db.execute(create_table_cmd)
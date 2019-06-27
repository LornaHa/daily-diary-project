require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'daily_diary_test')

# Clear the entries table

connection.exec("TRUNCATE entries;")

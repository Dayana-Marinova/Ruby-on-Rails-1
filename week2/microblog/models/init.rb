require 'sqlite3'

db = SQLite3::Database.open('blog.db')

db.execute <<-SQL
  CREATE TABLE posts(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    content TEXT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
  );
SQL

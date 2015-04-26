require 'sqlite3'

class Blog
  def initialize
    @db = SQLite3::Database.open('blog.db')
  end

  def posts
    self.post_array_to_hash(@db.execute("SELECT * FROM posts"))
  end

  def new_post(title, content)
    @db.execute("INSERT INTO posts (title, content) VALUES ('#{title}', '#{content}')")
    @db.last_insert_row_id()
  end

  def post_by_id(id)
    self.post_array_to_hash(@db.execute("SELECT * FROM posts WHERE id = #{id}"))[0]
  end

  def delete_by_id(id)
    self.post_array_to_hash(@db.execute("DELETE * FROM posts WHERE id = #{id}"))
  end

  def post_array_to_hash(arr)
    arr.map do |post|
      {
        :id => post[0],
        :title => post[1],
        :content => post[2],
        :timestamp => post[3]
      }
    end
  end
end
require_relative './database_connection'

class Post
  attr_reader :id, :title
  def initialize(id, title)
    @id = id
    @title = title
  end

  def self.all(connection = DatabaseConnection)
    query = 'SELECT * FROM posts'
    connection.query(query).values.map { |post| Post.new(post[0], post[1]) }
  end
end
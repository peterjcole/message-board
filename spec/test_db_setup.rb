def truncate_posts
  truncate_sql = 'TRUNCATE TABLE posts'
  DatabaseConnection.query(truncate_sql)
end

def insert_test_post_titles
  insert_sql = %{
    INSERT INTO posts (title)
    VALUES ('Diamonds are better than rubies'), 
    ('Happy birthday'), 
    ('I can''t think of an interesting blog title');
  }
  DatabaseConnection.query(insert_sql)
end
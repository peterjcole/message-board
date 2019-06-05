require 'database_connection'

describe DatabaseConnection do
  before(:each) do
    truncate_posts
    insert_test_post_titles
  end
  describe '.setup' do
    it "returns a PG object" do
      expect(DatabaseConnection.setup('message_board_test')).to be_a(PG::Connection)
    end
  end

  describe '.query' do
    it 'returns a post hash when passed a select query' do
      query = 'SELECT id, title FROM posts'
      expected_title = 'Diamonds are better than rubies'
      expect(DatabaseConnection.query(query)[0]['title']).to eq(expected_title)
    end
  end
end
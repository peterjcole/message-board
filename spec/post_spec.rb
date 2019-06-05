require 'post'

describe Post do

  let(:post) { Post.new(1, 'This is a title') }
  describe '#id' do
    it 'returns the post id' do
      expect(post.id).to be 1
    end
  end
  describe '#title' do
    it 'returns the post title' do
      expect(post.title).to eq('This is a title')
    end
  end
  describe '.all' do
    it 'returns three posts' do
      expect(Post.all.length).to be 3
      expect(Post.all).to satisfy { |arr| arr.all?(Post) }
    end
  end
end
require 'sinatra/base'

class MessageBoard < Sinatra::Base
  get '/' do
    @posts = Post.all
    erb(:index)
  end
end
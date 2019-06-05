require 'sinatra/base'
require './database_connection_setup'
require './lib/post'

class MessageBoard < Sinatra::Base
  get '/' do
    @posts = Post.all
    erb(:index)
  end
end
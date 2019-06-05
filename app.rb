require 'sinatra/base'
require './database_connection_setup'

class MessageBoard < Sinatra::Base
  get '/' do
    @posts = Post.all
    erb(:index)
  end
end
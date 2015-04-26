require 'rubygems'
require 'sinatra'

require './models/post.rb'
require './models/blog.rb'

db = Blog.new

get '/' do
  @posts = db.posts
  erb :index
end

get '/new' do
  @post = db.new_post
  erb :new_post
end

post '/new' do
end

get '/:id' do
  @post = db.post(params[:id])
  erb :test
end

delete '/:id' do
end

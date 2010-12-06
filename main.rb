require 'rubygems'
require 'sinatra'

not_found do
  headers["Status"] = "301 Moved Permanently"
  redirect("/")
end

get '/' do
  erb :index
end

get '/screen.css' do
  sass :screen
end
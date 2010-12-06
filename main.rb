require 'rubygems'
require 'sinatra'

set :sass, {:style => :compact, :load_paths => [File.join(Sinatra::Application.views, 'stylesheets')]}

not_found do
  headers["Status"] = "301 Moved Permanently"
  redirect("/")
end

get '/' do
  erb :index
end

get '/stylesheets/screen.css' do
  sass :screen
end
require 'sinatra'

set :markdown, :layout_engine => :erb

get '/' do
  markdown :eggnog
end

get '/vegan' do
  markdown :vegan
end

get '/mobile.css' do
  scss :mobile
end

not_found do
  headers["Status"] = "301 Moved Permanently"
  redirect("/")
end
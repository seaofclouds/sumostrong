require 'sinatra/base'

class App < Sinatra::Base
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
    status 301
    redirect("/")
  end
end

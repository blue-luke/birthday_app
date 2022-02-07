require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/birthday_wishes' do
    name = params[:name]

    "Your birthday will be in 1 day, #{name}!"
  end

end
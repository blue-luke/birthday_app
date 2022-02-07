require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/birthday_wishes' do
    name = params[:name]
    "Happy Birthday #{name}!"
  end

end
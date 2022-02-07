require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/birthday_wishes' do
    "Happy Birthday!"
  end

end
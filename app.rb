require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/birthday_wishes' do
    name = params[:name]
     
    if name == "Jane"
      "Your birthday will be in 1 day, #{name}!"
    elsif name == "John"
      "Your birthday will be in 2 days, #{name}!"
    end
  end

end
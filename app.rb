require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base

  get '/' do
    "Hello there!"
  end

end
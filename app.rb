#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'


get '/Home'
    erb :home
end
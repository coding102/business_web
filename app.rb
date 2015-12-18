#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'


get '/home' do
	"Hello World"
    erb :home
end

post '/sign-in' do
  "Hello World"
end

get '/contact' do
	erb :contact
end
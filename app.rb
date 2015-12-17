#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'


get '/home' do
	"Hello World"
    erb :home
end

get '/contact' do
	erb :contact
end
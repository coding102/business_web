#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'
require 'mandrill'

configure(:development){set :database, "sqlite3:blog.sqlite3"}


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

get '/food' do
	erb :food

end
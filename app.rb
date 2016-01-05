#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'
require 'mandrill'

configure(:development){set :database, "sqlite3:blog.sqlite3"}


get '/home' do
	"Hello World"
    erb :home
end

post '/sign-in' do
 	:sign_in
end

get '/contact' do
	erb :contact
end

get '/food' do
	erb :food
end

get '/menu' do
    erb :menu
end

get '/events' do
    erb :events
end

get '/bar' do
    erb :bar
end

get '/dining' do
    erb :dining
end
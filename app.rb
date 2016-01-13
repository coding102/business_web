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

post '/email-request' do

	require 'mandrill'
	m = Mandrill::API.new
	message = {
	:subject=> "Hello from the Mandrill API",
	:from_name=> "Your name",
	:text=>"How are you?",
	:to=>[{:email=> "loljmtorres@gmail.com", :name=> "Person"}],
	:html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
	:from_email=>"loljmtorres@gmail.com"
	}

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
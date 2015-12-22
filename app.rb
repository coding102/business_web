#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'


get '/home.erb' do
    erb :home
end

get '/menu.erb' do
    erb :menu
end

get '/events.erb' do
    erb :events
end

get '/bar.erb' do
    erb :bar
end

get '/contact.erb' do
    erb :contact
end

get '/dining.erb' do
    erb :dining
end


configure(:development){set :database, "sqlite3:blog.sqlite3"}
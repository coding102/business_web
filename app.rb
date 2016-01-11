#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'
require 'sendgrid-ruby'
#
#name = "mark"
#email="mercercountynj@gmail.com"
#
#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 
#
## As a hash
#client = SendGrid::Client.new(api_user: ENV['SENDGRID_USERNAME'], api_key: ENV['SENDGRID_PASSWORD'])
#
## Or as a block
#client = SendGrid::Client.new do |c|
#  c.api_user = ENV['SENDGRID_USERNAME']
#  c.api_key = ENV['SENDGRID_PASSWORD']
#end
#
## or as a block with the API key only #
#client = SendGrid::Client.new do |c|
#  c.api_key = ENV['SENDGRID_API_KEY']
#end
#
#
#
#
#
#mail = SendGrid::Mail.new do |m|
#  m.to = 'jon@nycda.com'
#  m.from = 'jon@nycda.com'
#  m.subject = 'Hello world!'
#  m.text = 'I heard you like pineapple.'
#end
#
#res = client.send(mail)
#puts res.code
#puts res.body


get '/home' do
    erb :home
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

get '/contact' do
    erb :contact
end

get '/dining' do
    erb :dining
end







configure(:development){set :database, "sqlite3:blog.sqlite3"}
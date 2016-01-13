#create "Gemfile" file, add "gem 'sinatra'", and run bundle install
require 'sinatra'
require 'sendgrid-ruby'


configure(:development){set :database, "sqlite3:blog.sqlite3"}


# post '/email-request' do

# 	require 'mandrill'
# 	m = Mandrill::API.new
# 	message = {
# 	:subject=> "Hello from the Mandrill API",
# 	:from_name=> "Your name",
# 	:text=>"How are you?",
# 	:to=>[{:email=> "loljmtorres@gmail.com", :name=> "Person"}],
# 	:html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
# 	:from_email=>"loljmtorres@gmail.com"
# 	}

# 	erb :contact

# end




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



post '/email-request' do

    
    @firstname = params['first']
	   @lastname = params['last']
	   @email = params['email']
	   @phone = params['phone']
	   @description = params['description']
    
    
    client = SendGrid::Client.new do |c|
        c.api_key = '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'
    end
    
    mail = SendGrid::Mail.new do |m|
        m.to = 'mercercountynj@gmail.com'
        m.from = @email
        m.subject = 'Hello world!'
        m.text = @description
    end

    puts "CONTACTING"
    puts "*****************************"
    res = client.send(mail)
    puts res.code
    puts res.body
    

    erb :events
    
end

get '/dining' do
    erb :dining
end

get '/bar' do
    erb :bar
end




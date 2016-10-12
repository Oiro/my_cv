require 'sinatra'
require 'mail'
require 'mail_store'
require 'yaml/store'

store = MailStore.new('mail.yml')

get('/resume') do
	mail = store.all
	erb :index

end

get('/resume/mail_to') do
	
	erb :mail_to
	# '<h1>Heading</h1>'

end

post('/resume/create') do 
	# "Received: #{params.inspect}"
	
	@mail = Mail.new(email: params['email'], title: params['title'], content: params['content'])

	
	store.save(@mail)
	# 
	redirect '/resume'
	# erb :show
	# erb :index

end

get('/resume/:id') do

	# "Received a request for movie ID: #{params['id']}"
	id = params['id'].to_i
	@mail = store.find(id)
	erb :show

end
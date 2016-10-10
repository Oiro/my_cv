require 'sinatra'
require 'mail'
require 'mail_store'
require 'yaml/store'

store = MailStore.new('mail.yml')

get('/resume') do

	erb :index

end

get('/resume/mail_to') do

	erb :mail_to

end

# get('/resume/show') do


# 	erb :show


# end

post('/resume/create') do 
	# "Received: #{params.inspect}"
	@mail = Mail.new
	@mail.email = params['email']
	# @email = Email.new
	@mail.title = params['title']
	# @email = Email.new
	@mail.content = params['content']

	store.save(@mail)
	# redirect '/resume/mail_to'
	# erb :index
	erb :show

end

get('/resume/:id') do

	# "Received a request for movie ID: #{params['id']}"
	id = params['id'].to_i
	@mail = store.find(id)
	erb :show

end
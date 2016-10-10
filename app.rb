require 'sinatra'
# require 'email'
# require 'yaml'

get('/resume') do

	erb :resume

end

get('/email/mail_to') do

	erb :mail_to

end

# post('email/create') do 
# 	# "Received: #{params.inspect}"
# 	@email = Email.new
# 	@email.title = params['title']
# 	@message = Message.new
# 	@message = params['message']
# 	@content = Content.new
# 	@content = params['content']

# end
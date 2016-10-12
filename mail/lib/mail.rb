class Mail

	attr_accessor :email, :title, :content, :id

	def initialize(options)

		@email = options[:email]
		@title = options[:title]
		@content = options[:content]


		# puts @email, @title, @content


	end

end
class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => email,
			:to => 'your-email@example.com',
			:subject => "A new contact form message from #{name}")
	end

	def thank_you
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		UserMailer.contact_form(@email, @name, @message).deliver_now
	end

	def welcome(user)
		@appname = "Korean Cosmetics"
		mail( :to => user.email,
			:subject => "Welcome to #{@appname}!")
	end

	def paid_success(user, product)
	@user = user
	@product = product
	mail(
		:from => 'xcalibur23@hotmail.com',
		:to => @user.email,
		:subject => "Korean Cosmetics: Order and Payment confirmation"
		)
	end
end

class UserMailer < ApplicationMailer

	def contact_form(email, name, message)
	  @message = message
	  mail(:from => email, :to => 'ryans970@homtail.com', :subject "SoCal Theater Message from #{name}"),
	end

	def thank_you
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		UserMailer.thank_you(@email, @name, @message).deliver
	end
end

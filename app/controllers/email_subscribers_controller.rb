class EmailSubscribersController < ApplicationController
	
	def create
		@subscriber = EmailSubscriber.new(params.require(:email_subscriber).permit(:email))
		if @subscriber.save
			redirect_to root_path, success: "Thank you for subscribing - We will be in touch soon!"
		end
	end

	private
end
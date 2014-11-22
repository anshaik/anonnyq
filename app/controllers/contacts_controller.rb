class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message))  	

  	if @contact.save
  		redirect_to root_path, notice: "Thank you for contacting us!"
  	else
  		render :new
  	end
  end
end

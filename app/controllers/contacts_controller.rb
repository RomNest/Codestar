class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		
		if @contact.save
			redirect_to "/company/contacts"
		else
			redirect_to "/company/contacts"
		end
	end

	private
		def contact_params
			params.require(:contact).permit(:name, :email, :subject, :message)
		end
end

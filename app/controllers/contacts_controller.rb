class ContactsController < ApplicationController
  def new
    @categories = Category.all
    @contact = Contact.new
  end

  def create
    @categories = Category.all
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      Mailer.contact_form(@contact).deliver
      redirect_to new_contact_path, flash: {success: t(:"create.message_has_been_sent")}
    else
      render :new
    end
  end
end

class ContactsController < ApplicationController
  def new
    @categories = Category.all
    @contact = Contact.new
  end

  def create
    @categories = Category.all
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = "Impossible d'envoyer le message..."
      render :new
    end
  end
end

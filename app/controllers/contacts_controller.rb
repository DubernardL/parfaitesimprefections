class ContactsController < ApplicationController
  def new
    @categories = Category.all
    @contact = Contact.new
  end
end

class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @categories = Category.all
    @contact = Contact.new
  end
end

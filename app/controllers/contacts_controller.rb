class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  include CurrentCart
  before_action :set_cart

  def new
    @categories = Category.all
    @contact = Contact.new
  end
end

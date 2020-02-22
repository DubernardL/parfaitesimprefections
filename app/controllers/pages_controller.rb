class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  include CurrentCart
  before_action :set_cart

  def home
    @categories = Category.all
  end
end

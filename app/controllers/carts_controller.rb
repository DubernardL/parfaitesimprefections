class CartsController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def show
    @categories = Category.all
  end
end

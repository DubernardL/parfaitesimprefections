class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  include CurrentCart
  before_action :set_cart

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  end
end

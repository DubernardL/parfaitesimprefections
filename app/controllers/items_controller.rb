class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  include CurrentCart
  before_action :set_cart

  def index
    @categories = Category.all
    @items = Item.all
  end

  def show
    @categories = Category.all
    @item = Item.find(params[:id])
  end
end

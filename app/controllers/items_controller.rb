class ItemsController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.all
  end

  def show
    @categories = Category.all
    @item = Item.find(params[:id])
  end
end

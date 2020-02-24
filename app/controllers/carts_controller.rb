class CartsController < ApplicationController
  def show
    @categories = Category.all
    @total = 0
    @cart.cart_items.each do |cart_item|
      total_item = cart_item.item.price * cart_item.quantity
      @total += total_item
    end
  end
end

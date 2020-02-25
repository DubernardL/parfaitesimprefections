class CartsController < ApplicationController
  def show
    @total = 0
    @cart.cart_items.each do |cart_item|
      total_item = cart_item.item.price * cart_item.quantity
      @total += total_item
    end
  end

  def empty
    @cart.cart_items = []
    @count_cart = 0
    render "show"
  end
end

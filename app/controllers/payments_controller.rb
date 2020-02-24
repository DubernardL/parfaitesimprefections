class PaymentsController < ApplicationController

  def new
    @categories = Category.all
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    @items = @cart.cart_items
    @total = 0
    @items.each do |cart_item|
      total_item = cart_item.item.price * cart_item.quantity
      @total += total_item
    end

  end
end

require 'stripe'

class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    products = @cart.cart_items

    order  = Order.create!(amount: params[:total_cart].to_i, state: 'pending', user: current_user)

    @line_items = []

    products.each do |product|
      item = {
      name: product.item.name,
      images: [product.item.image],
      amount: product.item.price_cents,
      currency: 'eur',
      quantity: product.quantity
      }
      @line_items << item
    end

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: @line_items,
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @categories = Category.all
    @order = current_user.orders.find(params[:id])
    @items = @cart.cart_items
  end
end

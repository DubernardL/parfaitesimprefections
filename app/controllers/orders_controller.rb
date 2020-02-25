require 'stripe';

class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def create
    products = @cart.cart_items

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

    order  = Order.create!(amount: params[:total_cart].to_i, state: 'pending', user: current_user, items: @line_items )

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: @line_items,
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end
end

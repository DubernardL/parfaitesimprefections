module CurrentCart
  private

  def set_cart
    # @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    # session[:cart_id] ||= @cart.id
    if current_user
      @cart = current_user.cart
    end
  end
end

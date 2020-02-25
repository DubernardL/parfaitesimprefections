module CurrentCart
  private

  def set_cart
    @categories = Category.all
    # @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    # session[:cart_id] ||= @cart.id
    if current_user
      @cart = current_user.cart
      if @cart == nil
        @cart = Cart.create
        current_user.cart = @cart
      end
      @count_cart = 0
      @cart.cart_items.each { |item| @count_cart += item.quantity }
    end
  end
end

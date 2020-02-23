class CartItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    item = Item.find(params[:item_id])
    @cart_item = @cart.add_item(item)
    if @cart_item.save
      respond_to do |format|
        format.html { redirect_to item_path(item.id), alert: "Produit ajouté !"}
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to item_path(item.id), alert: "Désolé, nous rencontrons un problème revenez plus tard :)"}
        format.js
      end
    end
  end

  def destroy
    @cart_item = @cart.cart_items.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path(@cart.id)
  end
end

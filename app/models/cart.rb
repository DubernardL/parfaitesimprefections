class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  def add_item(item)
    product = cart_items.find_by(item: item)
    if product
      product.quantity += 1
    else
      product = cart_items.new(item: item)
    end
    product
  end
end

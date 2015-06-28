class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  validates :name, :address, :city, :state, :phone, :email, presence: true

def add_line_items_from_cart(cart)
  cart.line_items.each do |item|
    item.cart_id = nil
    line_items << item #addinf the curent item to the line items collection for this order
  end

end

end

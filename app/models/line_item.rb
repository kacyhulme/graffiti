class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  belongs_to :cart

  def total_price
  	product.price * quantity
  end

  def decrement_line_items
  	@line_item.quantity - 1
  end
end

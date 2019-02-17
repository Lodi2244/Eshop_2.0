# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :item

  def total_price
    total_price = []
    user = User.find(user_id)
    user.carts.map { |cart| total_price << cart.item.price * cart.quantity }
    total_price.sum
  end
end

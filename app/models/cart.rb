# frozen_string_literal: true

# == Schema Information
#
# Table name: carts
#
#  id         :bigint(8)        not null, primary key
#  quantity   :integer
#  user_id    :bigint(8)
#  item_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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

# frozen_string_literal: true

# == Schema Information
#
# Table name: item_orders
#
#  id         :bigint(8)        not null, primary key
#  item_id    :bigint(8)
#  order_id   :bigint(8)
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemOrder < ApplicationRecord
  validates :quantity, presence: true,
                       numericality: { only_integer: true, greater_than_or_equal: 0 }

  belongs_to :item
  belongs_to :order

  private

  def total_price
    total_price = []
    user = User.find(user_id)
    user.item_orders.map { |cart| total_price << cart.item.price * cart.quantity }
    total_price.sum
  end
end

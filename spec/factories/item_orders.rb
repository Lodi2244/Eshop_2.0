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

FactoryBot.define do
  factory :item_order do
    quantity { 1 }
  end
end

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
  belongs_to :order
  belongs_to :item
end

# frozen_string_literal: true

# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  total      :decimal(, )      not null
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#

class Order < ApplicationRecord
  belongs_to :user
  has_many :item_orders, dependent: :destroy
  has_many :items, through: :item_orders
end

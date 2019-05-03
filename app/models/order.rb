# frozen_string_literal: true

# == Schema Information
#
# Table name: orders
#
#  id          :bigint(8)        not null, primary key
#  total_price :float            default(0.0)
#  status      :integer          default("in_progress")
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  validates :status, presence: true
  validates :total_price, presence: true,
                          numericality: { only_float: true }
  belongs_to :user
  has_many :item_orders, dependent: :destroy
  has_many :items, through: :item_orders

  enum status: %i[in_progress cancelled confirmed paid]

  def total
    Order.joins(:items).where(id: id).pluck(:price).sum
  end
end

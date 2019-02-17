# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  description :text             not null
#  price       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#  category_id :integer
#  address     :string
#  city        :string
#

class Item < ApplicationRecord
  validates :description, presence: true, length: { maximum: 100 }
  validates :title, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { only_float: true }

  has_many_attached :item_images
end

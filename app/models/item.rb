# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  price       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#  address     :string
#  city        :string
#  image_url   :string
#

class Item < ApplicationRecord
  validates :description, presence: { message: "La description doit être renseignée." }, length: { maximum: 100 }
  validates :title, presence: { message: "Le titre doit être renseigné." }
  validates :price, presence: { message: "Le prix doit être renseigné." }, numericality: { only_float: true }

  has_many_attached :item_images
  belongs_to :user, optional: true
  belongs_to :category, optional: true
end

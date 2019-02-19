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

  def add_to_cart
    item = Item.find(item_id)
    current_cart = current_user.carts.items
    current_cart << item
    flash[:success] = 'Item successfully added to cart!'
    redirect_to item_path(params[:id])
  end
end

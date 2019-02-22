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
#  image_url   :string
#  category_id :bigint(8)
#

class Item < ApplicationRecord
  validates :description, presence: { message: "La description doit être renseignée." }, length: { maximum: 100 }
  validates :title, presence: { message: "Le titre doit être renseigné." }
  validates :price, presence: { message: "Le prix doit être renseigné." }, numericality: { only_float: true }

  has_one_attached :item_image
  belongs_to :category
  has_many :item_orders, dependent: :destroy
  has_many :orders, through: :item_orders

  def add_to_cart
    item = Item.find(item_id)
    current_cart = current_user.carts.items
    current_cart << item
    flash[:success] = 'Item successfully added to cart!'
    redirect_to item_path(params[:id])
  end
end

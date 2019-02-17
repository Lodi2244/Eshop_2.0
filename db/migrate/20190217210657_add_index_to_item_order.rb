# frozen_string_literal: true

class AddIndexToItemOrder < ActiveRecord::Migration[5.2]
  def change
    add_index :item_orders, %i[item_id order_id], unique: true
  end
end

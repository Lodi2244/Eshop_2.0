# frozen_string_literal: true

class RemoveQuantityFromItemOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :item_orders, :quantity, :integer
  end
end

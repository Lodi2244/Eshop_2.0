# frozen_string_literal: true

class AddColumnToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :description, :string
  end
end

# frozen_string_literal: true

class RemoveNameFromUser < ActiveRecord::Migration[5.2]
  def up
    change_table :users, bulk: true do |t|
      t.remove :first_name
      t.remove :last_name
    end
  end

  def down
    change_table :users, bulk: true do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end

# frozen_string_literal: true

class RemoveConstraintOnUsername < ActiveRecord::Migration[5.2]
  def up
    remove_index :users, [:username]
    add_index :users, :username
  end

  def down
    remove_index :users, [:username]
    add_index :users, [:username], unique: true
  end
end

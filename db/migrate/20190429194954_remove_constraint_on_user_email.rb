# frozen_string_literal: true

class RemoveConstraintOnUserEmail < ActiveRecord::Migration[5.2]
  def up
    remove_index :users, [:email]
    add_index :users, :email
  end

  def down
    remove_index :users, [:email]
    add_index :users, [:email], unique: true
  end
end

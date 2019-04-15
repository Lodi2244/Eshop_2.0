# frozen_string_literal: true

# rubocop:disable Rails/BulkChangeTable
class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
# rubocop:enable Rails/BulkChangeTable

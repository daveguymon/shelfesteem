# frozen_string_literal: true

class AddUserToShelves < ActiveRecord::Migration[7.0]
  def change
    add_column :shelves, :user_id, :integer
    add_index :shelves, :user_id
  end
end

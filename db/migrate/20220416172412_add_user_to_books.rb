# frozen_string_literal: true

class AddUserToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :user_id, :integer
    add_index :books, :user_id
  end
end

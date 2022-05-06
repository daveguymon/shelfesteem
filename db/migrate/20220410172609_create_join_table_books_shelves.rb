# frozen_string_literal: true

class CreateJoinTableBooksShelves < ActiveRecord::Migration[7.0]
  def change
    create_join_table :books, :shelves, table_name: :shelvings do |t|
      t.index %i[book_id shelf_id]
      t.index %i[shelf_id book_id]
    end
  end
end

class AddShelvingsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :shelvings, :user_id, :integer
    add_index :shelvings, :user_id
  end
end

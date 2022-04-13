class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :authors
      t.text :description
      t.integer :page_count
      t.string :categories
      t.string :image_link

      t.timestamps
    end
  end
end

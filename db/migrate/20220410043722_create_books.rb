class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :authors, array: true, default: []
      t.text :description
      t.integer :page_count
      t.string :categories, array: true, default: []
      t.string :image_link


      t.timestamps
    end
  end
end

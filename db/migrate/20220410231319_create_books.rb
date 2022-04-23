class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.jsonb :authors
      t.text :description
      t.integer :page_count
      t.jsonb :categories
      t.jsonb :image_links

      t.timestamps
    end
  end
end

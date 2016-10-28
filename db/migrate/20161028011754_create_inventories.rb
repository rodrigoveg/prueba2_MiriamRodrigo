class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :serial
      t.integer :size
      t.text :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, limit: 30
      t.string :description, limit: 255
      t.vendor :belongs_to

      t.timestamps null: false
    end
    add_index :products, :title, unique: true
  end
end

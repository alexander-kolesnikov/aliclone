class CreateProductPictures < ActiveRecord::Migration
  def change
    create_table :product_pictures do |t|
      t.string :title, limit: 100
      t.string :file
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
    add_index :product_pictures, :title, unique: true
  end
end

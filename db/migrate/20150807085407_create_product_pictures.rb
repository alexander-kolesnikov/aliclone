class CreateProductPictures < ActiveRecord::Migration
  def change
    create_table :product_pictures do |t|
      t.string :title, limit: 30

      t.timestamps null: false
    end
    add_index :product_pictures, :title, unique: true
  end
end

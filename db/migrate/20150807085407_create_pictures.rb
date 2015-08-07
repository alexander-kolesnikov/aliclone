class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title, limit: 30
      t.string :preview_picture
      t.string :fullsize_picture
      t.timestamps null: false
    end
    add_index :pictures, :title, unique: true
    add_reference :pictures, :products, index: true, null: false
  end
end

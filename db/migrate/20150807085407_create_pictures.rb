class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :file
      t.belongs_to :product, index: true

      t.timestamps null: false
    end

    add_index :pictures, :title, unique: true
  end
end

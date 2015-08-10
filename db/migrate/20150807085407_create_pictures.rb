class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title, limit: 100
      t.string :file
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
  end
end

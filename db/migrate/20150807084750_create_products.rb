class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :vendor, null: false, index: true
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_index :products, :title, unique: true
  end
end

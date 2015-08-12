class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :vendor
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_index :products, :title, unique: true
    add_reference :products, :vendors, index: true, null: false
  end
end

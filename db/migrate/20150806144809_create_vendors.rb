class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :title
      t.string :logo
      t.references :owner, null: false
      t.text :description
      t.timestamps null: false
    end
  end
end

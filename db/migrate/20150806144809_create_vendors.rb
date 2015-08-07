class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :title
      t.string :logo
      t.timestamps null: false
    end
  end
end

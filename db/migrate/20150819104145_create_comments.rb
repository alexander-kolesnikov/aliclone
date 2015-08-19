class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :contents
      t.integer :imageable_id
      t.string  :imageable_type

      t.timestamps null: false
    end
    add_index :comments, :imageable_id
  end
end

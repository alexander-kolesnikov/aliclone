class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :contents
      #t.integer :commentable_id
      #t.string  :commentable_type
      t.references :commentable, polymorphic: true, index: true
      t.timestamps null: false
    end
    #add_index :comments, :commentable_id
  end
end

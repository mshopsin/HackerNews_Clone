class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.text :body
      t.integer :reply_id
      t.integer :post_id
      t.integer :points

      t.timestamps
    end

    add_index :comments, :post_id
    add_index :comments, :author_id
    add_index :comments, :reply_id

  end
end

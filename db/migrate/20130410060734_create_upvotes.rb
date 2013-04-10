class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end

    add_index :upvotes, [:user_id, :comment_id],  :unique => true
  end
end

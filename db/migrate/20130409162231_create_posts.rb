class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.integer :author_id
      t.integer :points

      t.timestamps
    end

    add_index :posts, :author_id
  end
end

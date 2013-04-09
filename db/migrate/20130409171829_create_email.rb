class CreateEmail < ActiveRecord::Migration

  def change
    create_table :emails do |t|
      t.integer :user_id
      t.string :address

      t.timestamps
    end

    add_index :emails, :user_id

  end


end

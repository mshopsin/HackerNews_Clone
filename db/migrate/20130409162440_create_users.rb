class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :points

      t.timestamps
    end

    add_index :users, :username

  end
end

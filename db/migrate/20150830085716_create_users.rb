class CreateUsers < ActiveRecord::Migration
  def change
    drop_table :users

    create_table :users do |t|
      t.string :account
      t.string :name
      t.string :password
      t.boolean :is_admin

      t.timestamps
    end
  end
end

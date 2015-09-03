class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :title
      t.string :personal_id
      t.string :office_phone
      t.string :mobile_phone
      t.string :address
      t.string :email
      t.string :school
      t.integer :person_type
      t.integer :room_type
      t.string :room_partiner
      t.integer :room_date
      t.integer :food
      t.integer :transportation
      t.string :car_id
      t.integer :group

      t.timestamps
    end
  end
end

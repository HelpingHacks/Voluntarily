class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.integer :phone_number
      t.string :location

      t.timestamps
    end
  end
end

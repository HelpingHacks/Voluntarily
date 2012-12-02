class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :organization
      t.integer :phone_number

      t.timestamps
    end
  end
end

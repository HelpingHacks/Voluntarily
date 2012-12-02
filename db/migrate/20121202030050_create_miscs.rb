class CreateMiscs < ActiveRecord::Migration
  def change
    create_table :miscs do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end

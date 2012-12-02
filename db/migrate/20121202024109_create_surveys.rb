class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.boolean :contacted
      t.boolean :continue_visiting
      t.integer :urgency
      t.boolean :power
      t.boolean :heat
      t.boolean :water
      t.boolean :gas
      t.boolean :food
      t.boolean :medical
      t.integer :clothing
      t.boolean :water
      t.integer :flashlights
      t.string :misc

      t.timestamps
    end
  end
end

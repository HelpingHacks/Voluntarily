class AddIntegerFoodtoSurveys < ActiveRecord::Migration
  def up
  	add_column :surveys, :food, :integer 
  end

  def down
  	remove_column :surveys, :food, :integer
  end
end

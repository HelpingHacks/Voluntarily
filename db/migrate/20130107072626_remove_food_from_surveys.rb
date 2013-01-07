class RemoveFoodFromSurveys < ActiveRecord::Migration
  def up
  	      remove_column :surveys, :food, :boolean
  end

  def down
  	      add_column :surveys, :food, :boolean
  end
end

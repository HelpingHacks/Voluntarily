class AddAddressToSurveys < ActiveRecord::Migration
  def change
  		add_column :surveys, :address, :string
  		


  end
end

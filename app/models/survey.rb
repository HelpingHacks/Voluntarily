class Survey < ActiveRecord::Base
  	attr_accessible :address, :latitude, :longitude, :clothing, :contacted, :continue_visiting, :flashlights, :food, :gas, :heat, :medical, :misc, :power, :urgency, :water
	geocoded_by :address 
 	after_validation :geocode  
end

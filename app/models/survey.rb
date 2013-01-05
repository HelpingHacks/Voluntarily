class Survey < ActiveRecord::Base
  attr_accessible :address, :clothing, :contacted, :continue_visiting, :flashlights, :food, :gas, :heat, :medical, :misc, :power, :urgency, :water, 
end

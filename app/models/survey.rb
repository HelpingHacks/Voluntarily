class Survey < ActiveRecord::Base
  attr_accessible :clothing, :contacted, :continue_visiting, :flashlights, :food, :gas, :heat, :medical, :misc, :power, :urgency, :water, :water
end

class Volunteer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :location, :password, :phone_number, :username
end

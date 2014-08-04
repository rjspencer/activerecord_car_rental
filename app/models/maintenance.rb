class Maintenance < ActiveRecord::Base
  belongs_to :car, :foreign_key => :vehicle_id
end

class Rental < ActiveRecord::Base
  belongs_to :customer
  belongs_to :salesperson
  belongs_to :car
end

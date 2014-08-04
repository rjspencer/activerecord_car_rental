
class Customer < ActiveRecord::Base
  has_many :rentals
  has_many :rides, :class_name => 'Car', :through => :rentals
end

class Salesperson < ActiveRecord::Base
  has_many :rentals
  has_many :customers, :through => :rentals
end

class Car < ActiveRecord::Base
  has_many :rentals
  has_many :repairs, :class_name => 'Maintenance'
  has_many :people, :through => :rentals, source: :customer
end

class Rental < ActiveRecord::Base
  belongs_to :customer
  belongs_to :salesperson
  belongs_to :car
end

class Maintenance < ActiveRecord::Base
  belongs_to :car, :foreign_key => :vehicle_id
end

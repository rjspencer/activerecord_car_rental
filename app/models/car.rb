class Car < ActiveRecord::Base
  has_many :rentals
  has_many :repairs, :class_name => 'Maintenance'
  has_many :people, :through => :rentals, source: :customer

  def list_repairs
    Maintenance.where(car: self.id)
  end

  def first_repair
    Maintenance.find_by_car(self.id)
  end
end

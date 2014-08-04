# DB Seeds
require 'faker'
require 'date'

10.times do
  Customer.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      address: Faker::Address.street_address,
      payment_method: Faker::Finance.credit_card,
      payment_info: Faker::Number.number(16) )
end


Salesperson.create(first_name: 'Dev', last_name: 'Deol')


car_arr = [
  {make: "Toyota", model: "Camry"},
  {make: "Subaru", model: "Impreza"},
  {make: "Honda", model: "Accord"},
  {make: "Chevrolet", model: "Corvette"},
  {make: "Tesla", model: "Model S"},
  {make: "Mini", model: "Cooper"}
  ]
car_arr.each do |c|
  Car.create(make: c[:make], model: c[:model])
end


Rental.create(customer_id: 'Ryan', car_id: 1, salesperson_id: 1, cost: 800, date: Date.now)

Maintenance.create(vehicle_id: 1, service_type: 'tires', date: Date.now)

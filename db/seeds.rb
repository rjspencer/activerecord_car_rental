# DB Seeds
require 'faker'
require 'date'

100.times do
  Customer.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      address: Faker::Address.street_address,
      payment_method: Faker::Business.credit_card_type,
      payment_info: Faker::Business.credit_card_number )
end

10.times do
  Salesperson.create(first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name)
end


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

200.times do
Rental.create(customer_id: rand(99)+1, car_id: rand(5)+1, salesperson_id: rand(9)+1, cost: Faker::Commerce.price, date: Faker::Date.backward(days = 365))
end

50.times do
Maintenance.create(vehicle_id: rand(5)+1, service_type: Faker::Commerce.product_name, date: Faker::Date.backward(days = 365))
end

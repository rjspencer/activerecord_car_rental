Describe:

* the problem you've chosen to model
Rental car service including tracking customers, salespeople, cars, rentals, and maintenance records.

* the tables & releationships between them

customers
has_many rentals
has_many cars through rentals
name

salespeople
has_many rentals
has_many customers through rentals
name

cars
has_many rentals
has_many maintenance
has_many customers through rentals
make
model

rentals
has_one customer
has_one salesperson
has_one car
date

maintenance
has_one car
date
service_type

* instructions for seeding the database

###################
class_name, through, source, foreign_key

User Stories

A car will have many rentals
A customers may rent many different cars
A rental includes a car, customer, salesperson, cost, and the date of rental
A customer has a name and rental history
A car has a maintenance history





















class CreateRentalDatabase < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, :last_name, :address, :payment_method, :payment_info
      t.timestamps
    end

    create_table :salespeople do |t|
      t.string :first_name, :last_name
      t.timestamps
    end

    create_table :cars do |t|
      t.string :make, :model
      t.timestamps
    end

    create_table :rentals do |t|
      t.integer :customer_id, :car_id, :salesperson_id
      t.float :cost
      t.date :date
      t.timestamps
    end

    create_table :maintenances do |t|
      t.integer :vehicle_id
      t.string :service_type
      t.date :date
      t.timestamps
    end

  end
end



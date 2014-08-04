class Customer < ActiveRecord::Base
  has_many :rentals
  has_many :rides, :class_name => 'Car', :through => :rentals

  ##################################
  # VALIDATIONS
  NAME_FORMAT = /\A[a-zA-Z]*\z/
  CARD_FORMAT = /\d{4}-\d{4}-\d{4}-\d{4}/
  validates :first_name, format: { with: NAME_FORMAT, message: "Invalid first name"}
  validates :last_name, format: { with: NAME_FORMAT, message: "Invalid last name"}
  validates :payment_info, format: { with: CARD_FORMAT, message: "Invalid credit card number"}
  ####################################

  def name
    first_name + " " + last_name
  end

end

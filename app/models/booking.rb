class Booking < ApplicationRecord
  belongs_to :salon
  has_and_belongs_to_many :services

  before_save :calculate_total_price

  def calculate_total_price
    self.total_price = services.map{|s| s.price}.sum
  end
end

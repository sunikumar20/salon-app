class Employee < ApplicationRecord
  belongs_to :salon
  has_and_belongs_to_many :services
end

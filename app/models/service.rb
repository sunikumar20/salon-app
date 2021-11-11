class Service < ApplicationRecord
  belongs_to :salon
  has_many :bookings_services
  has_and_belongs_to_many :employees
  has_and_belongs_to_many :bookings

  def duration
    if (self.start_time && self.end_time)
      TimeDifference.between(self.start_time, self.end_time).humanize
    end
  end
end

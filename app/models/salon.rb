class Salon < ApplicationRecord
    has_many :employees
    has_many :services
    has_many :bookings
    accepts_nested_attributes_for :services

    def self.search(search)
        if search && !search.empty?
            where('company_name LIKE ?', search)
        else
            all
        end
    end
end

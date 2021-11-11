class Salon < ApplicationRecord
    self.per_page = 10
    has_many :employees
    has_many :services
    has_many :bookings
    accepts_nested_attributes_for :services

    def self.search(params)
        if params[:query] && !params[:query].empty?
            data = self.eager_load(:services).where('company_name LIKE ?', "#{params[:query]}%").paginate(page: (params[:page] || 1))
            if params[:sort_by]
                data.order("#{params[:sort_by]} #{params[:order] || 'asc'}")
            end
        else
            all.paginate(page: (params[:page] || 1))
        end
    end
end

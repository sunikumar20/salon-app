class CreateJoinTableEmployeesServices < ActiveRecord::Migration[6.0]
  def change
    create_join_table :employees, :services do |t|
      # t.index [:employee_id, :service_id]
      # t.index [:service_id, :employee_id]
    end
  end
end

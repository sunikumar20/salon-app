class UpdateServiceTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :duration, :start_time
    add_column :services, :end_time, :time
  end
end

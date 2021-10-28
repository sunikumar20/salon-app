class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.time :duration
      t.float :price
      t.belongs_to :salon

      t.timestamps
    end
  end
end

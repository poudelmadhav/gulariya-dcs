class AddElectricityToRecords < ActiveRecord::Migration[5.0]
  def change
  	add_column :records, :location, :string
  	add_column :records, :send_date, :timestamp
  	add_column :records, :received_date, :timestamp
  end
end

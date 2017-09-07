class RemoveElectricityToRecords < ActiveRecord::Migration[5.0]
  def change
  	remove_column :records, :send_date
  	remove_column :records, :received_date
  end
end

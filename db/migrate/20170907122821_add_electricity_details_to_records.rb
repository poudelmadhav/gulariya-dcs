class AddElectricityDetailsToRecords < ActiveRecord::Migration[5.0]
  def change
  	add_column :records, :kba, :decimal
  	add_column :records, :tr_sn, :string
  	add_column :records, :send_date, :date
  	add_column :records, :received_date, :date
  	add_column :records, :dismn_place, :string
  end
end

class RemoveNotNecessaryAndChangeDatatypeOfDateToRecords < ActiveRecord::Migration[5.0]
  def change
  	remove_column :records, :received_date
  	remove_column :records, :location
  	rename_column :records, :received_no, :get_pass
  	change_column :records, :send_date, 'date USING CAST(send_date AS date)'
  end
end

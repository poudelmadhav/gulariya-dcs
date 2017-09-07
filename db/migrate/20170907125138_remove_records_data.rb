class RemoveRecordsData < ActiveRecord::Migration[5.0]
  def change
  	remove_column :records, :amount
  	remove_column :records, :date
  	remove_column :records, :title
  end
end

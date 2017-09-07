class AddRemarksToRecords < ActiveRecord::Migration[5.0]
  def change
  	add_column :records, :remarks, :string
  end
end

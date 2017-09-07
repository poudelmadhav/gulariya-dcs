class AddReceivedSnToRecords < ActiveRecord::Migration[5.0]
  def change
  	add_column :records, :received_no, :integer
  end
end

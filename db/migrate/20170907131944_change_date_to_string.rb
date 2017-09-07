class ChangeDateToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :records, :send_date, :string
  	change_column :records, :received_date, :string
  end
end

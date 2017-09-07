class AddCompanyNameAndSnToRecords < ActiveRecord::Migration[5.0]
  def change
  	add_column :records, :company_name, :string
  	add_column :records, :sn, :integer
  end
end

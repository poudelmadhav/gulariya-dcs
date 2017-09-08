class AddReceivedTransformerDetailsToContents < ActiveRecord::Migration[5.0]
  def change
  	add_column :contents, :sn, :integer
  	add_column :contents, :kva, :integer
  	add_column :contents, :received_no, :integer
  	add_column :contents, :company_name, :string
  	add_column :contents, :install_place, :string
  	add_column :contents, :remarks, :string
  end
end

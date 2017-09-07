class ChangekVaToInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :records, :kba, :integer
  end
end

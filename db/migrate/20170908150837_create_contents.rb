class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
    	t.string :tr_sn
    	t.date   :received_date

      t.timestamps
    end
  end
end

ActiveAdmin.register Record, :as => "Sent Transformer" do
	menu priority: 2

	permit_params :sn, :kba, :tr_sn, :company_name, :send_date, :dismn_place, :get_pass, :location, :remarks

	filter :kba
	filter :tr_sn
	filter :company_name
	filter :send_date
	filter :dismn_place

	index :title => 'Sent Transformers'do
		selectable_column
		column 'S.N.', :sn, :sortable => :sn
		column 'Capacity(kVA)', :kba
		column 'TR Serial No.', :tr_sn
		column :company_name
		column :send_date
		column 'Dismantalled Place', :dismn_place
		column 'Send Gate Pass No.', :get_pass
		column :remarks
		actions
	end

	form do |f|
		f.inputs "Sent Transformers Details" do
	      f.input :sn,  label: 'S.N.'
	      f.input :kba, :label => 'Capacity(kVA)'
	      f.input :tr_sn, :label => 'TR Serial No.'
	      f.input :company_name
	      f.input :send_date
	      f.input :dismn_place, label: 'Dismantalled Place'
	      f.input :get_pass, label: 'Send Gate Pass No.'
	      f.input :remarks
	    end
	    f.actions
	end

end

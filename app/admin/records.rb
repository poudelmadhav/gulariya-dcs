ActiveAdmin.register Record do
	menu priority: 1

	permit_params :sn, :kba, :tr_sn, :company_name, :send_date, :dismn_place, :received_date, :location, :remarks

	filter :kba
	filter :tr_sn
	filter :company_name
	filter :send_date
	filter :dismn_place
	filter :received_date
	filter :location

	index do
		selectable_column
		column 'S.N.', :sn, :sortable => :sn
		column 'Capacity(kVA)', :kba
		column 'TR Serial No.', :tr_sn
		column :company_name
		column :send_date
		column 'Dismantalled Place', :dismn_place
		column 'Received No.', :received_no
		column :received_date
		column 'Installed Place', :location
		column :remarks
		actions
	end

	form do |f|
		f.inputs "Record Details" do
	      f.input :sn,  label: 'S.N.'
	      f.input :kba, :label => 'Capacity(kVA)'
	      f.input :tr_sn, :label => 'TR Serial No.'
	      f.input :company_name
	      f.input :send_date
	      f.input :dismn_place, label: 'Dismantalled Place'
	      f.input :received_no, label: 'Received No.'
	      f.input :received_date
	      f.input :location, label: 'Installed Place'
	      f.input :remarks
	    end
	    f.actions
	end

end

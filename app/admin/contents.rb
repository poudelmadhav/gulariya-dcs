ActiveAdmin.register Content, :as => "Received Transformer" do
	menu priority: 3

	permit_params :sn, :kva, :tr_sn, :company_name, :received_date, :install_place, :received_no, :location, :remarks

	filter :kva
	filter :tr_sn
	filter :company_name
	filter :received_date
	filter :install_place

	index :title => 'Received Transformers' do
		selectable_column
		column 'S.N.', :sn, :sortable => :sn
		column 'Capacity(kVA)', :kva
		column 'TR Serial No.', :tr_sn
		column :company_name
		column :received_date
		column 'Installed Place', :install_place
		column 'Received Gate Pass No.', :received_no
		column :remarks
		actions
	end

	form do |f|
		f.inputs "Received Transformer Details" do
	      f.input :sn,  label: 'S.N.'
	      f.input :kva, :label => 'Capacity(kVA)'
	      f.input :tr_sn, :label => 'TR Serial No.'
	      f.input :company_name
	      f.input :received_date
	      f.input :install_place, label: 'Installed Place'
	      f.input :received_no, label: 'Received Gate Pass No.'
	      f.input :remarks
	    end
	    f.actions
	end

	show do
		attributes_table do
			row :sn
			row :kva
			row :tr_sn
			row :company_name
			row :received_date
			row :install_place
			row :received_no
			row :remarks
    	end
	end

end

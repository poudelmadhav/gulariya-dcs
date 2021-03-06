ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Recent 5 Sent Transformers", :priority => 1 do
        table_for Record.order("created_at DESC").limit(5) do
            column :sn do |record|
                link_to record.sn, admin_sent_transformer_path(record.id)
            end
            column "TR Serial No.", :tr_sn do |record|
                link_to record.tr_sn, admin_sent_transformer_path(record.id)
            end
            column 'Capacity(kVA)', :kba
            column :send_date
            column :company_name
            column 'Dismantalled Place', :dismn_place
            column :remarks
    end

    section "Recent 5 Received Transformers", :priority => 1 do
        table_for Content.order("created_at DESC").limit(5) do
            column :sn do |content|
                link_to content.sn,  admin_received_transformer_path(content.id)
            end
            column "TR Serial No.", :tr_sn do |content|
                link_to content.tr_sn,  admin_received_transformer_path(content.id)
            end
            column 'Capacity(kVA)', :kva
            column :received_date
            column :company_name
            column 'Installed Place', :install_place
            column :remarks
        end
    end
  end # content
end
end

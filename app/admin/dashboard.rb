ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Recent 5 Send Transformers", :priority => 1 do
        table_for Record.order("created_at DESC").limit(5) do
            column :sn
            column "TR Serial No.", :tr_sn do |record|
                link_to record.tr_sn, [:admin, record]
            end
            column 'Capacity(kVA)', :kba
            column :send_date
            column :remarks
    end

    section "Recent 5 Received Transformers", :priority => 1 do
        table_for Content.order("created_at DESC").limit(5) do
            column :sn
            column "TR Serial No.", :content do |content|
                link_to content.tr_sn,  [:admin, content]
            end
            column 'Capacity(kVA)', :kva
            column :received_date
            column :remarks
        end
    end
  end # content
end
end

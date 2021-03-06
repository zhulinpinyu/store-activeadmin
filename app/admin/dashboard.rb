ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #   span :class => "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Product" do
          table_for Product.order("released_at desc").limit(3) do
            column :name do |product|
              link_to product.name, [:admin,product]
            end
            column :released_at
          end
          strong { link_to "View all Products", admin_products_path }
          # ul do
          #   Product.order("released_at desc").limit(3).each do |product|
          #     li link_to product.name, [:admin,product]
          #   end
          # end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end # content
end

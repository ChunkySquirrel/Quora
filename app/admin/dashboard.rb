ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
<<<<<<< HEAD
        
      end
    end
  # renders app/views/admin/posts/_some_partial.html.erb
 div class: 'custom-class' do
           
            @metric = Question.group(:title).count # whatever data you pass to chart
           render partial: 'metrics/partial_name', locals: {metric: @metric}
      
          end

    # renders app/views/admin/posts/_some_partial.html.erb
 
=======
      end
    end

>>>>>>> b9ed7c9f7f86157d91c35115327b671fcde44ab3
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end

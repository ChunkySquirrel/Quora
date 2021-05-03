ActiveAdmin.register User do

before_filter :skip_sidebar!




    scope:confirmedUsers
    scope:unconfirmedUsers
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :name, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :confirmed_at
  action_item :publish, only: :show do
    link_to "Confirm User", publish_admin_user_path(user), method: :put if !user.confirmed_at?
  end

  action_item :unpublish, only: :show do
    link_to "Unconfirm", unpublish_admin_user_path(user), method: :put if user.confirmed_at?
  end
  member_action :publish, method: :put do
    user=User.find(params[:id])
    user.update(confirmed_at: Time.zone.now)
    redirect_to admin_user_path(user)

  end

  member_action :unpublish, method: :put do
    user=User.find(params[:id])
    user.update(confirmed_at: nil)
    redirect_to admin_user_path(user)

  end
  # or
  #
  # permit_params do
  #   permitted = [:email, :name, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end

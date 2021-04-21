ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
<<<<<<< HEAD
  permit_params :email, :name, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :confirmed_at
=======
 permit_params :email, :name, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :confirmed_at
>>>>>>> b9ed7c9f7f86157d91c35115327b671fcde44ab3
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :name, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end

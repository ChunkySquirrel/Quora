ActiveAdmin.register Answer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
<<<<<<< HEAD
  # permit_params :user_id, :question_id, :body
=======
  permit_params :user_id, :question_id, :body
>>>>>>> b9ed7c9f7f86157d91c35115327b671fcde44ab3
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :question_id, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
<<<<<<< HEAD
  
=======

>>>>>>> b9ed7c9f7f86157d91c35115327b671fcde44ab3
end

ActiveAdmin.register Question do
  scope:SodaQuestions
  scope:LihaQuestion
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :title
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Question.create! row.to_hash
end
end
end

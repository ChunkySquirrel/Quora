class CreateCategoriesQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :categories_questions do |t|
      t.bigint "category_id", null: false
      t.bigint "question_id", null: false
    end
  end
end

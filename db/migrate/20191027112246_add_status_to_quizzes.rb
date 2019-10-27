class AddStatusToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :status, :integer, default: 0
  end
end

class RemoveAnswerFromQuizzes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quizzes, :answer, :string
  end
end

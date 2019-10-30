class AddUserToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quizzes, :user
  end
end

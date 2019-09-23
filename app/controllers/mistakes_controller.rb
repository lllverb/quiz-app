class MistakesController < ApplicationController

  def create
    user = current_user
    @quiz = Quiz.find(params[:quiz_id])
    if Mistake.create(user_id: user.id, quiz_id: @quiz.id)
    else
    end
  end
  
  def destroy
    user = current_user
    @quiz = Quiz.find(params[:quiz_id])
    if mistake = Mistake.find_by(user_id: user.id, quiz_id: @quiz.id)
      mistake.delete
    else
    end
  end

end

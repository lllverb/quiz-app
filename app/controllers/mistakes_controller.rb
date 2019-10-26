class MistakesController < ApplicationController

  def create
    @quiz = Quiz.find(params[:quiz_id])
    if Mistake.create(user_id: current_user.id, quiz_id: @quiz.id)
    else
    end
  end
  
  def destroy
    @quiz = Quiz.find(params[:quiz_id])
    if mistake = Mistake.find_by(user_id: current_user.id, quiz_id: @quiz.id)
      mistake.delete
    else
    end
  end

end

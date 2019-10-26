class FavoritesController < ApplicationController
  
  def create
    @quiz = Quiz.find(params[:quiz_id])
    if Favorite.create(user_id: current_user.id, quiz_id: @quiz.id)
    else
    end
  end
  
  def destroy
    @quiz = Quiz.find(params[:quiz_id])
    if favorite = Favorite.find_by(user_id: current_user.id, quiz_id: @quiz.id)
      favorite.delete
    else
    end
  end

end

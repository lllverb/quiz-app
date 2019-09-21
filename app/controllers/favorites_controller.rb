class FavoritesController < ApplicationController
  
  def create
    user = current_user
    @quiz = Quiz.find(params[:quiz_id])
    if Favorite.create(user_id: user.id, quiz_id: @quiz.id)
    else
    end
  end
  
  def destroy
    user = current_user
    @quiz = Quiz.find(params[:quiz_id])
    if favorite = Favorite.find_by(user_id: user.id, quiz_id: @quiz.id)
      favorite.delete
    else
    end
  end

end

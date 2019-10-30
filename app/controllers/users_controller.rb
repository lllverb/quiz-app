class UsersController < ApplicationController

  def show
    @parents = Category.where(ancestry: nil)
  end

  def category_children
    @children = Category.find(params[:category]).children
  end

  def favorite
    @favorites = Favorite.where(user_id: current_user.id)
    @quizzes = []
    @favorites.each do |fav|
      @quizzes << fav.quiz
    end
  end
  
  def mistake
    @mistakes = Mistake.where(user_id: current_user.id)
    @quizzes = []
    @mistakes.each do |mis|
      @quizzes << mis.quiz
    end
  end
end

class UsersController < ApplicationController

  def show
  end

  def favorite
    @favorites = Favorite.where(user_id: current_user.id)
  end
  
  def mistake
    @mistakes = Mistake.where(user_id: current_user.id)
  end
end

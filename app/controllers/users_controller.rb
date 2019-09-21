class UsersController < ApplicationController
  def show
  end

  def favorite
    @favorites = Favorite.where(user_id: current_user.id)
    # binding.pry
  end

  def mistake
  end
end

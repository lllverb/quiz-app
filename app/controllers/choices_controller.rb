class ChoicesController < ApplicationController
  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(choice_params)
    if @choice.save
      redirect_to new_choice_path, notice: '完了'
    else
      render :new
    end
  end

  private
  def choice_params
    params.require(:choice).permit(:quiz_id, :text, :correct)
  end
end

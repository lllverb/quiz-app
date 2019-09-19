class QuizzesController < ApplicationController
  def index
    @quiz = Quiz.new
    @categories = Category.all
    # binding.pry
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    # binding.pry
    if @quiz.save
      redirect_to root_path, notice: '完了'
    else
      render :new
    end
  end

  def show
  end

  private
  def quiz_params
    params.require(:quiz).permit(:quiz, :answer, :image, :explanation, :category_id)
  end
end

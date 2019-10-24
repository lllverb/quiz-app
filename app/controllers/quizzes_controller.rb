class QuizzesController < ApplicationController
  def index
    @categories = Category.where(ancestry: nil).limit(13)
  end

  def inde
    @quizzes = Quiz.order("RAND()").limit(10)
  end

  def new
    @quiz = Quiz.new
    4.times{@quiz.choices.build}
  end
  
  def create
    binding.pry
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to new_quiz_path, notice: '完了'
    else
      render :new
    end
  end

  def show
    @quizzes = Quiz.where(category_id: params[:id]).order("RAND()").limit(10)
  end

  private
  def quiz_params
    params.require(:quiz).permit(:quiz, :answer, :image, :explanation, :category_id, choices_attributes:[:id, :text, :correct])
  end
end

class QuizzesController < ApplicationController
  def index
    @categories = Category.where(ancestry: nil).limit(13)
    @quizzes = Quiz.order("RAND()").limit(10)
  end

  def inde
  end

  def keshimas
    @images = Modalimage.all
  end

  def new
    @quiz = Quiz.new
    4.times{@quiz.choices.build}
  end
  
  def create
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

  def modal
    Modalimage.create(modal_params)
  end

  def judge
    @quizzes = Quiz.order("RAND()").limit(10)
  end

  # 非同期通信/////////////////////
  def category_children
    @children = Category.find(params[:category]).children
  end


  private
  def quiz_params
    params.require(:quiz).permit(:quiz, :answer, :image, :explanation, :category_id, choices_attributes:[:id, :text, :correct])
  end

  def modal_params
    params.permit(:image)
  end
end

class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:create_judge, :update_judge, :destroy_judge]
  before_action :set_judge, only: [:update_judge, :destroy_judge]
  def index
    @categories = Category.where(ancestry: nil).limit(13)
    @quizzes = Quiz.order("RAND()").where(status: 1..Float::INFINITY).limit(10)
  end

  def keshimas
    @images = Modalimage.order("RAND()").limit(9)
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

  def search
    @quizzes = Quiz.where('quiz LIKE(?)', "%#{params[:keyword]}%")
    .or(Quiz.where('explanation LIKE(?)', "%#{params[:keyword]}%")).limit(20)
  end

  def find_by_parent
    @quizzes = []
    Category.find(params[:id]).children.each do |child|
      child.quizzes.order("RAND()").each do |quiz|
        @quizzes << quiz
      end
    end
  end

  def find_by_children
    @quizzes = Quiz.where(category_id: params[:id])
  end
  
  # judge関係////////////////////////////////////////////
  def judge
    @quizzes = Quiz.where.not(user_id: current_user.id).order("RAND()").limit(10)
  end

  def create_judge
    Judge.create(judge_params)
    @quiz.increment!(:status, params['format'].to_i)
  end
  
  def update_judge
    @judge.increment!(:judge, params['format'].to_i)
    @quiz.increment!(:status, params['format'].to_i)
  end
  
  def destroy_judge
    @judge.destroy
    @quiz.increment!(:status, params['format'].to_i)
  end
  # judge関係////////////////////////////////////////////




  # 非同期通信/////////////////////
  def category_children
    @children = Category.find(params[:category]).children
  end


  private
  def quiz_params
    params.require(:quiz).permit(:quiz, :answer, :image, :explanation, :category_id, choices_attributes:[:id, :text, :correct]).merge(user_id: current_user.id)
  end

  def modal_params
    params.permit(:image)
  end

  def judge_params
    params.permit(:judge).merge(user_id: current_user.id, quiz_id: @quiz.id, judge: params['format'].to_i)
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def set_judge
    @judge = Judge.find_by(user_id: current_user.id, quiz_id: @quiz.id)
  end
end

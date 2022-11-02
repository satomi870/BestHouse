class User::QuestionsController < ApplicationController
  def new
    @question = Question.new
    @answer = Answer.new
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    @question.property_id = params[:property_id]

    @question.save
    redirect_to root_path
  end

  def index
    @property = Property.find(params[:property_id]) #@property=(params[:property_id])だとただidを受け取ってるだけ
    @questions = @property.questions
  end

  def show
  end

  def edit
  end

   private

  def question_params
    params.require(:question).permit(:title, :text, :relation)
  end
end

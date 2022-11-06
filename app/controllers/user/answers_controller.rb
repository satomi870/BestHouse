class User::AnswersController < ApplicationController
  def create
    #byebug
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.question_id = params[:question_id]
    @answer.save
    question = Question.find(params[:question_id])
    redirect_to property_questions_path(question.property_id)
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def answer_params
      params.require(:answer).permit(:body,:relation)
  end
end

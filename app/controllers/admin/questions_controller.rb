class Admin::QuestionsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @questions_count = Question.all.count
    @questions = Question.page(params[:page]).per(10)
  end

  def destroy
    @question=Question.find(params[:id])
    @question.destroy
    redirect_to admin_questions_path
  end
end
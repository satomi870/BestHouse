class Admin::QuestionsController < ApplicationController

  def index
    @questions = Question.all
    #@property = Property.find(params[:property_id]) #@property=(params[:property_id])だとただidを受け取ってるだけ
    #@questions = @property.questions
  end

  def destroy
    @question=Question.find(params[:id])
    @question.destroy
    redirect_to admin_questions_path
  end
end

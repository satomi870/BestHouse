class User::QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    @question.property_id = params[:property_id]
    @question.save
    redirect_to property_questions_path(@question.property_id)
  end

  def index
    @property = Property.find(params[:property_id]) #@property=(params[:property_id])だとただidを受け取ってるだけ
    @questions = @property.questions
    @comment = Comment.new
    @comment_comment = CommentComment.new
    #@question = Question.find(params[:id])

  end

  def show
  end

  def edit
  end

   private

  def question_params
    params.require(:question).permit(:title, :body, :relation)
  end
end

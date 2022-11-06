class User::CommentsController < ApplicationController
  def create
    #byebug
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.question_id = params[:question_id]
    #@comment.target_user_id = params[:target_user_id]
    @comment.save
    question = Question.find(params[:question_id])
    redirect_to property_questions_path(question.property_id)
  end

  def reply
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user .id
    @comment.question_id = params[:question_id]
    #@comment.id = params[:comment_id]
    #@comment.target_user_id = params[:target_user_id]
    @comment.save
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

  def comment_params
      params.require(:comment).permit(:body,:relation,:target_user_id,:comment_id)
  end

end
class User::CommentCommentsController < ApplicationController
  def new
    @comment_comment = CommentComment.new
    @comment_id = params[:comment_id]
  end

  def create
     @comment_comment = Comment.new(comment_comment_params)
     @comment_comment.user_id = current_user.id
     @comment_comment.comment_id = params[:comment_id]
     
     @comment_comment.save
     comment = Comment.find(params[:comment_id])
    redirect_to property_questions_path(comment.question.property_id)
  end
  

  private

  def comment_comment_params
      params.require(:comment_comment).permit(:body,:relation)
  end
end


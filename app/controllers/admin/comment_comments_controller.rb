class Admin::CommentCommentsController < ApplicationController
  def destroy
    @comment_comment=CommentComment.find(params[:id])
    @comment_comment.destroy
    redirect_to admin_questions_path
  end
end

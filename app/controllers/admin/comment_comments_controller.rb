class Admin::CommentCommentsController < ApplicationController
  before_action :authenticate_admin!

  def destroy
    @comment_comment=CommentComment.find(params[:id])
    @comment_comment.destroy
    redirect_to admin_questions_path
  end
end

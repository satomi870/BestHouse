class User::CommentCommentsController < ApplicationController
  def create
    @comment_comment = CommentComment.new(comment_comment_params)
    @comment_comment.user_id = current_user .id
    @comment_comment.comment_id = params[:comment_id]
    #@comment.id = params[:comment_id]
    #@comment.target_user_id = params[:target_user_id]
    @comment_comment.save!
    comment = Comment.find(params[:comment_id])
    question = Question.find(comment.question_id)

    @notification = Notification.new
    @notification.action = "reply_on_comment"#コメントに対してのコメント
    @notification.comment_id = params[:comment_id]
    #@notification.comment_id = @comment_comment.id
    @notification.sender_id = @comment_comment.user_id
    @notification.receiver_id = comment.user_id
    @notification.save


    redirect_to property_questions_path(question.property_id)

  end
  private

  def comment_comment_params
      params.require(:comment_comment).permit(:body,:relation,:comment_id)
  end
end


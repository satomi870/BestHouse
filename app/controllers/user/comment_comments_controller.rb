class User::CommentCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment_comment = CommentComment.new(comment_comment_params)
    @comment_comment.user_id = current_user .id
    @comment_comment.comment_id = params[:comment_id]
    comment = Comment.find(params[:comment_id])
    question = Question.find(comment.question_id)
    if @comment_comment.save
      #コメントに対してのコメントしてくれた人に通知する処理
      @notification = Notification.new
      #コメントに対してのコメント
      @notification.action = "reply_on_comment"
      @notification.comment_id = params[:comment_id]
      @notification.sender_id = @comment_comment.user_id
      @notification.receiver_id = comment.user_id
      @notification.checked = false
      @notification.property_id = question.property_id
      @notification.save
      redirect_to property_path(question.property_id, flag: "qa")
    else
      @property=Property.find(question.property_id)
      @review = Review.new
      @question = Question.new
      @reviews=@property.reviews
      @questions = @property.questions
      @comment = Comment.new
      @rule = Rule.new
      @rules = @property.rules
      render 'user/properties/show'
    end
  end

  private

  def comment_comment_params
      params.require(:comment_comment).permit(:body,:relation)
  end
end
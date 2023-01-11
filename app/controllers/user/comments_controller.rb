class User::CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.question_id = params[:question_id]
    question = Question.find(params[:question_id])
    if @comment.save
    #質問に対してコメントしてくれた人に通知する処理
      @notification = Notification.new
      #質問に対してのコメント
      @notification.action = "comment_on_question"
      @notification.sender_id = @comment.user_id
      @notification.receiver_id = question.user_id
      @notification.checked = false
      @notification.property_id = @comment.question.property_id
      @notification.save!
      redirect_to property_path(@comment.question.property_id, :flag => "qa")
    else
      @property=Property.find(question.property_id)
      @review = Review.new
      @reviews=@property.reviews
      @question = Question.new
      @questions = @property.questions
      @comment_comment = CommentComment.new
      @rule = Rule.new
      @rules = @property.rules
      @avg_score = Review.where(property_id: @property.id).average(:score)
      render 'user/properties/show'
    end
  end

  private

  def comment_params
      params.require(:comment).permit(:body, :relation, :comment_id)
  end
end
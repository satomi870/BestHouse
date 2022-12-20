class User::CommentCommentsController < ApplicationController
  def create
    @comment_comment = CommentComment.new(comment_comment_params)
    @comment_comment.user_id = current_user .id
    @comment_comment.comment_id = params[:comment_id]
    #@comment.id = params[:comment_id]
    #@comment.target_user_id = params[:target_user_id]
    comment = Comment.find(params[:comment_id])
      question = Question.find(comment.question_id)
    if @comment_comment.save


      @notification = Notification.new
      @notification.action = "reply_on_comment"#コメントに対してのコメント
      @notification.comment_id = params[:comment_id]
      #@notification.comment_id = @comment_comment.id
      @notification.sender_id = @comment_comment.user_id
      @notification.receiver_id = comment.user_id
      @notification.checked = false
      @notification.save
    #redirect_to property_path(@comment_comment.property_id)
    redirect_to property_path(question.property_id, flag: "qa")
    else
      @property=Property.find(question.property_id)
      # history = @property.histories.new
      # history.user_id = current_user.id
      # if current_user.histories.exists?(property_id: "#{params[:id]}")
      #   old_history = current_user.histories.find_by(property_id: "#{params[:id]}")
      #   old_history.destroy
      # end
      # history.save

      #@review_relation = Review.new#()ないは関係性ページの値を受け取るために設置
      @review = Review.new
      @question = Question.new
      @reviews=@property.reviews
      #@question = Question.new
      @questions = @property.questions
      # @questions = @property.questions.where("answer_flg = false")
      @comment = Comment.new
      # @comment_comment = CommentComment.new
      @rule = Rule.new
      @rules = @property.rules
      render 'user/properties/show'
    end




  end
  private

  def comment_comment_params
      params.require(:comment_comment).permit(:body,:relation,:comment_id)
  end
end


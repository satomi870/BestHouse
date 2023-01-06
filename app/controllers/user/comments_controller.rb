class User::CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    #byebug
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.question_id = params[:question_id]
    #@comment.target_user_id = params[:target_user_id]
    question = Question.find(params[:question_id])
    if @comment.save
    #質問に対してのコメントしてくれた人に通知する処理
    @notification = Notification.new
    @notification.action = "comment_on_question"#質問に対してのコメント
    #@notification.question_id = params[:question_id]
    #@notification.comment_id = @comment.id
    @notification.sender_id = @comment.user_id
    @notification.receiver_id = question.user_id
    @notification.checked = false
    @notification.property_id = @comment.question.property_id
    @notification.save!



    #redirect_to property_path(@comment.question.property_id)
      redirect_to property_path(@comment.question.property_id, :flag => "qa")
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
      @reviews=@property.reviews
      @question = Question.new
      @questions = @property.questions
      # @questions = @property.questions.where("answer_flg = false")
      #@comment = Comment.new
      @comment_comment = CommentComment.new
      @rule = Rule.new
      @rules = @property.rules
      render 'user/properties/show'
    end
  end






  def reply
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user .id
    @comment.question_id = params[:question_id]
    #@comment.id = params[:comment_id]
    #@comment.target_user_id = params[:target_user_id]
    @comment.save
    question = Question.find(params[:question_id])

    @notification = Notification.new
    @notification.action = "reply_on_comment"#コメントに対してのコメント
    @notification.original_comment_id = params[:original_comment_id]
    @notification.comment_id = @comment.id
    @notification.sender_id = @comment.user_id
    @notification.receiver_id = original_comment.user_id
    @notification.save


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
      params.require(:comment).permit(:body,:relation,:comment_id)
  end

end
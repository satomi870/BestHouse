class User::CommentsController < ApplicationController
  def create
    #byebug
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.question_id = params[:question_id]
    #@comment.target_user_id = params[:target_user_id]
    @comment.save
    question = Question.find(params[:question_id])
    @notification = Notification.new
    @notification.action = "comment_on_question"#質問に対してのコメント
    @notification.question_id = params[:question_id]
    @notification.comment_id = @comment.id
    @notification.sender_id = @comment.user_id
    @notification.receiver_id = question.user_id
     @notification.save                     
  
    

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
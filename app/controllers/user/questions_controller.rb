class User::QuestionsController < ApplicationController
  before_action :authenticate_user!

  def create

    @question = Question.new(question_params)
    @question.user_id = current_user.id
    @question.property_id = params[:property_id]
    @question.checked = false
    if @question.save
      flash[:notice] = "質問の投稿が完了しました!"
    #A物件をレビューしたuser一覧が入っているA物件をレビューした人みんなに通知したいから
      review_users = @question.property.reviews.map{|review| review.user}.uniq
    #レビューしてくれた人一人ひとりにに通知をする処理
      review_users.each do |review_user|
        notification = Notification.new
        notification.action = "review_on_question"
        notification.sender_id = @question.user_id
        notification.receiver_id = review_user.id
        notification.checked = false
        notification.property_id = @question.property_id
        notification.save!
      end

      redirect_to property_path(params[:property_id])

    else
      @property=Property.find(params[:property_id])
      @review = Review.new
      @reviews=@property.reviews
      @questions = @property.questions
      @comment = Comment.new
      @comment_comment = CommentComment.new
      @rule = Rule.new
      @rules = @property.rules
      render 'user/properties/show'
    end
  end

   private

  def question_params
    params.require(:question).permit(:title, :body, :relation)
  end
end
class User::QuestionsController < ApplicationController
  before_action :authenticate_user!
  def new
    @question = Question.new
  end

  def create
    @avg_atmosphere = Review.where(property_id: params[:id]).average(:atmosphere) ? Review.where(property_id: params[:id]).average(:atmosphere).round(0) : 0
    @avg_distance_sence = Review.where(property_id: params[:id]).average(:distance_sense) ? Review.where(property_id: params[:id]).average(:atmosphere).round(0) : 0
    @avg_cleanliness_shared  = Review.where(property_id: params[:id]).average(:cleanliness_shared) ? Review.where(property_id: params[:id]).average(:cleanliness_shared).round(0) : 0
    @avg_noise = Review.where(property_id: params[:id]).average(:noise) ? Review.where(property_id: params[:id]).average(:noise).round(0) : 0
    @avg_net_spead = Review.where(property_id: params[:id]).average(:net_speed) ? Review.where(property_id: params[:id]).average(:net_speed).round(0) : 0
    @avg_shower = Review.where(property_id: params[:id]).average(:shower) ? Review.where(property_id: params[:id]).average(:shower).round(0) : 0
    @avg_event = Review.where(property_id: params[:id]).average(:event) ? Review.where(property_id: params[:id]).average(:event).round(0) : 0


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

    #redirect_to property_path(@question.property_id)
      redirect_to property_path(params[:property_id])

    else
      @property=Property.find(params[:property_id])
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
      #@question = Question.new
      @questions = @property.questions
      # @questions = @property.questions.where("answer_flg = false")
      @comment = Comment.new
      @comment_comment = CommentComment.new
      @rule = Rule.new
      @rules = @property.rules
      render 'user/properties/show'
    end
  end

  def index
    @property = Property.find(params[:property_id]) #@property=(params[:property_id])だとただidを受け取ってるだけ
    @questions = @property.questions
    #@comment = Comment.new
    #@comment_comment = CommentComment.new
    #@question = Question.find(params[:id])

  end

  def show
     #@property = Property.find(params[:id])
     #@question = Question.find(params[:id])
  end
  def edit
  end

   private

  def question_params
    params.require(:question).permit(:title, :body, :relation)
  end
end

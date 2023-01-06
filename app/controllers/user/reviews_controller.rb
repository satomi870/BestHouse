class User::ReviewsController < ApplicationController
before_action :authenticate_user!

  def new
    #byebug
    #@review_relation = Review.new#()ないは関係性ページの値を受け取るために設置


  end

  def create
    @avg_atmosphere = Review.where(property_id: params[:id]).average(:atmosphere) ? Review.where(property_id: params[:id]).average(:atmosphere).round(0) : 0
    @avg_distance_sence = Review.where(property_id: params[:id]).average(:distance_sense) ? Review.where(property_id: params[:id]).average(:atmosphere).round(0) : 0
    @avg_cleanliness_shared  = Review.where(property_id: params[:id]).average(:cleanliness_shared) ? Review.where(property_id: params[:id]).average(:cleanliness_shared).round(0) : 0
    @avg_noise = Review.where(property_id: params[:id]).average(:noise) ? Review.where(property_id: params[:id]).average(:noise).round(0) : 0
    @avg_net_spead = Review.where(property_id: params[:id]).average(:net_speed) ? Review.where(property_id: params[:id]).average(:net_speed).round(0) : 0
    @avg_shower = Review.where(property_id: params[:id]).average(:shower) ? Review.where(property_id: params[:id]).average(:shower).round(0) : 0
    @avg_event = Review.where(property_id: params[:id]).average(:event) ? Review.where(property_id: params[:id]).average(:event).round(0) : 0

    relation_detail=""
    if review_params[:relation] == "former_resident"
      relation_detail = review_params[:relation_detail1]
    else
      relation_detail = review_params[:relation_detail2]
    end
    review_params_copy = review_params.clone
    review_params_copy.delete(:relation_detail1)
    review_params_copy.delete(:relation_detail2)
    review_params_copy[:relation_detail] = relation_detail

    @review = Review.new(review_params_copy)

    @review.user_id = current_user.id
    @review.property_id = params[:property_id]


    # byebug

    if @review.save
      flash[:notice] = "レビューの投稿が完了しました!"
      redirect_to property_path(params[:property_id])
    else
      # redirect_to  controller: :properties, action: :show, id: 1
      @property=Property.find(params[:property_id])
      # history = @property.histories.new
      # history.user_id = current_user.id
      # if current_user.histories.exists?(property_id: "#{params[:id]}")
      #   old_history = current_user.histories.find_by(property_id: "#{params[:id]}")
      #   old_history.destroy
      # end
      # history.save

      #@review_relation = Review.new#()ないは関係性ページの値を受け取るために設置
      # @review = Review.new
      @reviews=@property.reviews
      @question = Question.new
      @questions = @property.questions
      # @questions = @property.questions.where("answer_flg = false")
      @comment = Comment.new
      @comment_comment = CommentComment.new
      @rule = Rule.new
      @rules = @property.rules


      render 'user/properties/show'
    end

  end

  def choose

     @review_relation_new = Review.new

  end


  def index
    # @property=Property.find(params[:property_id]) #@property=(params[:property_id])だとただidを受け取ってるだけ
    #@reviews=@property.reviews
    redirect_to property_path(params[:property_id])#リロードするとこの画面に飛んでしまう

  end

  def show
    #@property=params[:property_id]
    #@reviews=@property.reviews
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :relation, :relation_detail1,:relation_detail2,:score, :atmosphere, :cleanliness_shared, :congestion_shared, :noise, :distance_sense,:net_speed, :shower, :event, :repeat)
  end
end
 #byebug
     # 簡易バリデーション(セレクトボックス用)
    # if params[:review][:relation].blank? ||
    #   (params[:review][:relation] == 'former_resident' && params[:review][:relation_detail1].blank?) ||
    #   (params[:review][:relation] == 'others' && params[:review][:relation_detail2].blank?)
    #   redirect_to request.referer
    # end


    # if params[:review][:relation] == 'former_resident' && !params[:review][:relation_detail1].blank?
    #   @review_relation.relation_detail = params[:review][:relation_detail1]  #イコールじゃなくて右の値を左に入れるという意味
    # elsif params[:review][:relation] == 'others' && !params[:review][:relation_detail2].blank?
    #   @review_relation.relation_detail = params[:review][:relation_detail2]
    # end
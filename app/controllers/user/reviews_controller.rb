class User::ReviewsController < ApplicationController


  def new
    #byebug
    #@review_relation = Review.new#()ないは関係性ページの値を受け取るために設置


  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.property_id = params[:property_id]

    # byebug
    if @review.save
      redirect_to request.referer
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


      # if Read.create(question_id: @question.id, user_id: current_user.id)
      #   @read = Read.update(complete: true)
      # end
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
    params.require(:review).permit(:title, :text, :relation, :relation_detail,:score, :atmosphere, :cleanliness_shared, :congestion_shared, :noise, :distance_sense,:net_speed, :shower, :event, :repeat)
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

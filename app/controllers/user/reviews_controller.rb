class User::ReviewsController < ApplicationController


  def new
    #byebugf
    @review_relation = Review.new(relation: params[:review][:relation]) #()ないは関係性ページの値を受け取るために設置

    # 簡易バリデーション(セレクトボックス用)
    if params[:review][:relation].blank? ||
      (params[:review][:relation] == 'former_resident' && params[:review][:relation_detail1].blank?) ||
      (params[:review][:relation] == 'others' && params[:review][:relation_detail2].blank?)
      redirect_to request.referer
    end


    if params[:review][:relation] == 'former_resident' && !params[:review][:relation_detail1].blank?
      @review_relation.relation_detail = params[:review][:relation_detail1]  #イコールじゃなくて右の値を左に入れるという意味
    elsif params[:review][:relation] == 'others' && !params[:review][:relation_detail2].blank?
      @review_relation.relation_detail = params[:review][:relation_detail2]
    end
  end

  def create
    #byebug

     @review = Review.new(review_params)
     @review.user_id = current_user.id
     @review.property_id = params[:property_id]

     @review.save
     redirect_to root_path
  end

  def choose

     @review_relation_new = Review.new

  end


  def index
    @property=Property.find(params[:property_id]) #@property=(params[:property_id])だとただidを受け取ってるだけ
    @reviews=@property.reviews


  end

  def show
    #@property=params[:property_id]
    #@reviews=@property.reviews
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:title, :text, :relation, :relation_detail, :atmosphere, :cleanliness_shared, :congestion_shared, :noise_shared, :noise_room, :net_speed, :shower, :event)
  end
end

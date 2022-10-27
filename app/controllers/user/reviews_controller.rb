class User::ReviewsController < ApplicationController


  def new
    #byebug

    @review = Review.new(relation: params[:relation])
    if params[:relation_detail1]
    @review.relation_detail = params[:relation_detail1].to_i  #イコールじゃなくて右の値を左に入れるという意味
    elsif params[:relation_detail2]
      @review.relation_detail = params[:relation_detail2].to_i
    end
    

  end

  def create
    #byebug
     @review = Review.new(review_params)
     @review.user_id = current_user.id
     @review.save
     redirect_to root_path
  end

  def choose

     @review = Review.new
  end


  def index
    @reviews=Review.all

  end

  def show
  end

  def edit
  end

  def review_params
    params.require(:review).permit(:title, :text, :relation)
  end
end

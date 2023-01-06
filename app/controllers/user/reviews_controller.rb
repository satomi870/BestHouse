class User::ReviewsController < ApplicationController

  before_action :authenticate_user!

  def create
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

    if @review.save
      flash[:notice] = "レビューの投稿が完了しました!"
      redirect_to property_path(params[:property_id])
    else
      @property=Property.find(params[:property_id])

      @reviews=@property.reviews
      @question = Question.new
      @questions = @property.questions
      @comment = Comment.new
      @comment_comment = CommentComment.new
      @rule = Rule.new
      @rules = @property.rules

      render 'user/properties/show'
    end

  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :relation, :relation_detail1,:relation_detail2,:score, :atmosphere, :cleanliness_shared, :congestion_shared, :noise, :distance_sense,:net_speed, :shower, :event, :repeat)
  end
end
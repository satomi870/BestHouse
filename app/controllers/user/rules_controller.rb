class User::RulesController < ApplicationController
  before_action :authenticate_user!
  def create
    @rule = Rule.new(rule_params)
    @rule.user_id = current_user.id
    @rule.property_id = params[:property_id]
    if @rule.save
      redirect_to property_path(@rule.property_id, :flag => "rl")
    else
      @property=Property.find(params[:property_id])
      @review = Review.new
      @reviews=@property.reviews
      @question = Question.new
      @questions = @property.questions
      @comment = Comment.new
      @comment_comment = CommentComment.new
      @rules = @property.rules
      @avg_score = Review.where(property_id: @property.id).average(:score)
      render 'user/properties/show'
    end
  end

  private

  def rule_params
    params.require(:rule).permit(:body)
  end
end

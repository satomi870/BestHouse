class User::RulesController < ApplicationController

  def create
    @rule = Rule.new(rule_params)
    @rule.user_id = current_user.id
    @rule.property_id = params[:property_id]

    if @rule.save
      #redirect_to property_path(params[:property_id])
      redirect_to property_path(@rule.property_id, :flag => "rl")
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
      @question = Question.new
      @questions = @property.questions
      # @questions = @property.questions.where("answer_flg = false")
      @comment = Comment.new
      @comment_comment = CommentComment.new
      #@rule = Rule.new
      @rules = @property.rules
      render 'user/properties/show'
    end


  end

  private

  def rule_params
    params.require(:rule).permit( :body)
  end

end

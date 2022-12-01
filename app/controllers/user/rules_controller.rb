class User::RulesController < ApplicationController

  def create
    @rule = Rule.new(rule_params)
    @rule.user_id = current_user.id
    @rule.property_id = params[:property_id]

    @rule.save
    redirect_to request.referer


  end

  private

  def rule_params
    params.require(:rule).permit( :body)
  end

end

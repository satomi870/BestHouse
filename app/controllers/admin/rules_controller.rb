class Admin::RulesController < ApplicationController
  def index
    @rules = Rule.all
  end

  def destroy
    @rule=Rule.find(params[:id])
    @rule.destroy
    redirect_to admin_rules_path
  end
end

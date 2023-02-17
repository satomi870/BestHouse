class Admin::RulesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @rules_count = Rule.all.count
    @rules = Rule.page(params[:page]).per(15)
  end

  def destroy
    @rule=Rule.find(params[:id])
    @rule.destroy
    redirect_to admin_rules_path
  end
end

class User::HistoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @histories_count = current_user.histories.count
    @histories = current_user.histories.page(params[:page]).per(10)
  end

  def destroy
    @history = History.find(params[:id])
    @history.destroy
    redirect_to request.referer
  end
end

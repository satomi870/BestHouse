class User::HistoriesController < ApplicationController

  def index
    @histories = current_user.histories.limit(20)
  end

  def destroy
    @history = History.find(params[:id])
    @history.destroy
    redirect_to request.referer
  end
end

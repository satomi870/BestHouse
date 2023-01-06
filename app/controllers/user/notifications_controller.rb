class User::NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    current_user.passive_notifications.where(checked: false).each do |notification|
      notification.update(checked: true)
    end
  end

  def destroy
    Notification.find(params[:id]).destroy
    redirect_to notifications_path
  end
end



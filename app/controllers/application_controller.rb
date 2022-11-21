class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?
  # before_action :authenticate_user!

  def storable_location?
    # Turbo Framesを使う時はコメントを反転させる。
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
    # request.get? && !turbo_frame_request? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end


end

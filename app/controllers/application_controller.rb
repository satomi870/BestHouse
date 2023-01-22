class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?

  def storable_location?
    # Turbo Framesを使う時はコメントを反転させる。
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
    # request.get? && !turbo_frame_request? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end

  def log_in(user)
      session[:user_id] = user.id
  end

  private

  def set_tags
    basic = Category.find_by(category: "basic")
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags

    other = Category.find_by(category: "other")
    @other_tags=other.tags
  end

end

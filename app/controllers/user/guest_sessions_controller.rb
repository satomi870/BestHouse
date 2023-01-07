class User::GuestSessionsController < ApplicationController
before_action :authenticate_user!, except: [:create]

  def create
    user = User.find_or_create_by(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nickname = "ゲストユーザー"
      user.age ="20代"
      user.gender ="女性"
    end
    sign_in user
    session[:user_id] = user.id
    flash[:notice] = "ゲストユーザーとしてログインしました"
    redirect_to root_path
  end
end

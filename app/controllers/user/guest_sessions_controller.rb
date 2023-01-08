class User::GuestSessionsController < ApplicationController
before_action :authenticate_user!, except: [:create]

  def create
    user = User.find_or_create_by(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nickname = "ゲストユーザー"
      user.age ="非公開"
      user.gender ="非公開"
    end
    sign_in user
    session[:user_id] = user.id
    flash[:notice] = "ゲストユーザーとしてログインしました"
    redirect_to root_path
  end
end

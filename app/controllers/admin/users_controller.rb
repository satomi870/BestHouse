class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users_count = User.all.count
    @users = User.page(params[:page]).per(15)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :age, :gender, :email, :is_deleted)
  end
end

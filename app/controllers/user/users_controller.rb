class User::UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    user=current_user
    user.update(user_params)
    redirect_to edit_user_path
  end

  def review
    @reviews = current_user.reviews
  end

  def question
    @questions = current_user.questions
    @comment = Comment.new

  end

  def comment
    @comment = current_user.comments
  end

  def favorite
    @favorites = current_user.favorites
  end

  # def destroy
  #   property = Property.find(params[:id])
  #   property.destroy
  #   redirect_to favorite_path

  # end
  def user_params
    params.require(:user).permit(:nickname,:age,:gender,:image)
  end
end

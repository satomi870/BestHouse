class User::UsersController < ApplicationController
  def new
  end


  def index
  end

  def show
  end

  def edit
  end

  def favorite
    @favorites = current_user.favorites
  end

  # def destroy
  #   property = Property.find(params[:id])
  #   property.destroy
  #   redirect_to favorite_path

  # end
end

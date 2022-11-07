
class User::FavoritesController < ApplicationController
  def create
    # @format = params[:format]
    property = Property.find(params[:property_id])
    favorite = current_user.favorites.new(property_id: property.id)
    favorite.save

    # redirect_to seach_path(@format)
    redirect_to request.referer
  end

  def destroy
    # @format = params[:format]
    property = Property.find(params[:property_id])
    favorite = current_user.favorites.find_by(property_id: property.id)
    favorite.destroy
    # redirect_to seach_path(@format)
    redirect_to request.referer
  end


end

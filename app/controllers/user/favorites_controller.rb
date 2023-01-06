
class User::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    property = Property.find(params[:property_id])
    favorite = current_user.favorites.new(property_id: property.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
     property = Property.find(params[:property_id])
    favorite = current_user.favorites.find_by(property_id: property.id)
    favorite.destroy
    redirect_to request.referer
  end
end

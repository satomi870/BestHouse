class Admin::ReviewsController < ApplicationController
before_action :authenticate_admin!

  def index
    @reviews = Review.all
  end

  def destroy
    @review=Review.find(params[:id])
    @review.destroy
    redirect_to admin_reviews_path
  end

end

class User::HomesController < ApplicationController


  def top
    @areas=Area.all
    @tags=Tag.all
    #@archive = params[:tag_id].present? ? Tag.find(params[:tag_id]).archives.page(params[:page]).per(15) : Archive.all.page(params[:page]).per(15)
    #@posts = params[:tag_id].present? ? Tag.find(params[:tag_id]).posts : Post.all
  end

  def about
  end
end

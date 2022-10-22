class User::PropertiesController < ApplicationController

  def seach

    if params[:tag_id]
      @tag=Tag.find(params[:tag_id])
      @properties = @tag.properties
    elsif params[:area_id]
      @area = Area.find(params[:area_id])
      @properties = @area.properties
    end
    #@properties = params[:tag_id].present? ? Tag.find(params[:tag_id]).properties : Property.all  4.5.10行目を合わせてるだけ
  end

  def index
    #@properties=Property.all
  end

  def show
    @property=Property.find(params[:id])
  end
end
#違うURLで同じアクションに飛びたい時は一つにルーティングをまとめ
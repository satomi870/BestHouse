class User::PropertiesController < ApplicationController

  def seach

    tags = params[:tag]
    areas = params[:area_name]

  #byebug
    if  tags != ["", "", "", ""] && areas != [""]
      @properties =  Property.includes(:tag_properties).where(tag_properties: {tag_id: tags }).where(area_id: areas)
    elsif tags != ["", "", "", ""] && areas == [""]
      @properties =  Property.includes(:tag_properties).where(tag_properties: {tag_id: tags })
    elsif tags == ["", "", "", ""] && areas != [""]
      @properties =  Property.where(area_id: areas)
    else
      @properties =  Property.all
    end

      #Parent.includes(:children).where(children: {name: "taro"})
      #Child.includes(:parent).where(:parents: {name: "takashi"})
      #njnnjjjjjnn[;kl[Child.where(name: "taro")

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
    @properties=Property.all
  end

  def show
    @property=Property.find(params[:id])
  end
end
#違うURLで同じアクションに飛びたい時は一つにルーティングをまとめ
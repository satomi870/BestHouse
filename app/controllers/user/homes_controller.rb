class User::HomesController < ApplicationController


  def top
    #@categories=Category.all
    @areas=Area.all

    basic = Category.find_by(category: "basic") #カテゴリわけwhereを使うパターンもある　rails 検索　やり方
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags

    #@tags=Tag.all
    building = Category.find_by(category: "building")
    @building_tags=building.tags

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    atmosphere = Category.find_by(category: "atmosphere")
    @atmosphere_tags=atmosphere.tags


    #@archive = params[:tag_id].present? ? Tag.find(params[:tag_id]).archives.page(params[:page]).per(15) : Archive.all.page(params[:page]).per(15)
    #@posts = params[:tag_id].present? ? Tag.find(params[:tag_id]).posts : Post.all
  end

  def about
    #@area=Area.new
    #@tag=Tag.new


    basic = Category.find_by(category: "basic") #カテゴリわけwhereを使うパターンもある　rails 検索　やり方
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags

    @tags=Tag.all
    building = Category.find_by(category: "building")
    @building_tags=building.tags

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    atmosphere = Category.find_by(category: "atmosphere")
    @atmosphere_tags=atmosphere.tags
  end
end

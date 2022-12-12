class User::HomesController < ApplicationController


  def top
    #@categories=Category.all
    @areas=Area.all
    @area_groups = AreaGroup.all

    basic = Category.find_by(category: "basic") #カテゴリわけwhereを使うパターンもある　rails 検索　やり方
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags

    #@tags=Tag.all

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags


    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags

    other = Category.find_by(category: "other")
    @other_tags=other.tags


    #@archive = params[:tag_id].present? ? Tag.find(params[:tag_id]).archives.page(params[:page]).per(15) : Archive.all.page(params[:page]).per(15)
    #@posts = params[:tag_id].present? ? Tag.find(params[:tag_id]).posts : Post.all
    @properties_atmosphere = Property.find(Review.group(:property_id).where(atmosphere: 3..).order("avg(atmosphere) desc").limit(5).pluck(:property_id))
    @properties_noise = Property.find(Review.group(:property_id).where(atmosphere: 3..).order("avg(noise) desc").limit(5).pluck(:property_id))
    @properties_congestion_shared = Property.find(Review.group(:property_id).where(atmosphere: 3..).order("avg(congestion_shared) desc").limit(5).pluck(:property_id))
    @properties_cleanliness_shared= Property.find(Review.group(:property_id).where(atmosphere: 3..).order("avg(cleanliness_shared) desc").limit(5).pluck(:property_id))
    @properties_event_many = Property.find(Review.group(:property_id).where(atmosphere: 3..).order("avg(event) desc").limit(5).pluck(:property_id))
    @properties_event_less = Property.find(Review.group(:property_id).where(event: ..2).order("avg(event)").limit(5).pluck(:property_id))
    @properties_repeat = Property.find(Review.group(:property_id).where(atmosphere: 3..).where(repeat: 3).order("avg(repeat) desc").limit(5).pluck(:property_id))
    #@properties = Property.find(Review.group(:property_id).order("avg(distance_sense)").limit(5).pluck(:property_id))


      #@results = @ransack.result
     #@ransack = Property.ransack(params[:ransack])
  end


  def about
    #@area=Area.new
    #@tag=Tag.new


    basic = Category.find_by(category: "basic") #カテゴリわけwhereを使うパターンもある　rails 検索　やり方
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags


    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags



    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags

    other = Category.find_by(category: "other")
    @other_tags=other.tags




  end
end

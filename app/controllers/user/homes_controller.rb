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
    building = Category.find_by(category: "building")
    @building_tags=building.tags

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    atmosphere = Category.find_by(category: "atmosphere")
    @atmosphere_tags=atmosphere.tags

    individual = Category.find_by(category: "individual")
    @individual_tags=individual.tags

    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags


    #@archive = params[:tag_id].present? ? Tag.find(params[:tag_id]).archives.page(params[:page]).per(15) : Archive.all.page(params[:page]).per(15)
    #@posts = params[:tag_id].present? ? Tag.find(params[:tag_id]).posts : Post.all
    @properties_atmosphere = Property.find(Review.group(:property_id).order("avg(atmosphere) desc").limit(5).pluck(:property_id))
    @properties_noise = Property.find(Review.group(:property_id).order("avg(noise) desc").limit(5).pluck(:property_id))
    @properties_congestion_shared = Property.find(Review.group(:property_id).order("avg(congestion_shared) desc").limit(5).pluck(:property_id))
    @properties_cleanliness_shared= Property.find(Review.group(:property_id).order("avg(cleanliness_shared) desc").limit(5).pluck(:property_id))
    @properties_event = Property.find(Review.group(:property_id).order("avg(event) desc").limit(5).pluck(:property_id))
    @properties_eventa = Property.find(Review.group(:property_id).order("avg(event)").limit(5).pluck(:property_id))
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

    @tags=Tag.all
    building = Category.find_by(category: "building")
    @building_tags=building.tags

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    atmosphere = Category.find_by(category: "atmosphere")
    @atmosphere_tags=atmosphere.tags

    individual = Category.find_by(category: "individual")
    @individual_tags=individual.tags

    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags




  end
end

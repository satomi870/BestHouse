class User::HomesController < ApplicationController

  def top
    @areas=Area.all
    @area_groups = AreaGroup.all

    basic = Category.find_by(category: "basic") #カテゴリわけwhereを使うパターンもある
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags

    other = Category.find_by(category: "other")
    @other_tags=other.tags

    #ラジオボタンレビュー項目の平均点を物件ごとに算出して上位5件を表示
    @properties_atmosphere = Property.find(Review.group(:property_id).where(atmosphere: 3..).order("avg(atmosphere) desc").limit(5).pluck(:property_id))
    @properties_noise = Property.find(Review.group(:property_id).where(noise: 3..).order("avg(noise) desc").limit(5).pluck(:property_id))
    @properties_cleanliness_shared= Property.find(Review.group(:property_id).where(cleanliness_shared: 3..).order("avg(cleanliness_shared) desc").limit(5).pluck(:property_id))
    @properties_congestion_shared = Property.find(Review.group(:property_id).where(congestion_shared: 3..).order("avg(congestion_shared) desc").limit(5).pluck(:property_id))
    #各物件のお気に入り数が多い物件上位5件を表示
    @properties_favorites = Property.all.sort { |x, y| y.favorites.count <=> x.favorites.count }.reject { _1.favorites.count == 0 }.first(5)
  end

  def about
    basic = Category.find_by(category: "basic")
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
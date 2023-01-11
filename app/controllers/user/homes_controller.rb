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
    review_with_atmosphere_avg = Review.group(:property_id).order("avg(atmosphere) desc").select('property_id, avg(atmosphere) as atmosphere_avg')
    @properties_atmosphere = Property.find(review_with_atmosphere_avg.select { |review| review.atmosphere_avg >= 3.0 }.pluck(:property_id))
    review_with_noise_avg = Review.group(:property_id).order("avg(noise) desc").select('property_id, avg(noise) as noise_avg')
    @properties_noise = Property.find(review_with_noise_avg.select { |review| review.noise_avg >= 3.0 }.pluck(:property_id))
    review_with_cleanliness_shared_avg = Review.group(:property_id).order("avg(cleanliness_shared) desc").select('property_id, avg(cleanliness_shared) as cleanliness_shared_avg')
    @properties_cleanliness_shared = Property.find(review_with_cleanliness_shared_avg.select { |review| review.cleanliness_shared_avg >= 3.0 }.pluck(:property_id))
    review_with_congestion_shared_avg = Review.group(:property_id).order("avg(congestion_shared) desc").select('property_id, avg(congestion_shared) as congestion_shared_avg')
    @properties_congestion_shared = Property.find(review_with_congestion_shared_avg.select { |review| review.congestion_shared_avg >= 3.0 }.pluck(:property_id))
    #各物件のお気に入り数が多い物件上位5件を表示
    @properties_favorites = Property.all.sort { |x, y| y.favorites.count <=> x.favorites.count }.reject { _1.favorites.count == 0 }.first(5)
    #review_with_atmo_avg = Review.group(:property_id).order("avg(atmosphere) desc").select('property_id, avg(atmosphere) as atmo_avg')
    #@properties_atmosphere = Property.find(review_with_atmo_avg.select { |review| review.atmo_avg >= 3.0 }.pluck(:property_id))
    #@properties_noise = Property.find(Review.group(:property_id).where(noise: 3..).order("avg(noise) desc").limit(5).pluck(:property_id))
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
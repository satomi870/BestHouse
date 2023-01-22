class User::HomesController < ApplicationController
  before_action :set_tags

  def top
    @area_groups = AreaGroup.all

    #ラジオボタンレビュー項目の平均点を物件ごとに算出して上位5件を表示
    @properties_atmosphere = Property.popular_ranking('atmosphere', 5)
    @properties_noise = Property.popular_ranking('noise', 5)
    @properties_cleanliness_shared = Property.popular_ranking('cleanliness_shared', 5)
    @properties_congestion_shared = Property.popular_ranking('congestion_shared', 5)
    #各物件のお気入り数が多い物件上位5件を表示
    @properties_favorites = Property.many_favorite.first(5)
  end
end
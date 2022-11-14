class User::PropertiesController < ApplicationController

  def seach

  #   if params[:format].present?
  #     @formats = params[:format].split("/")
  #   end


  #   @tags = params[:tag]
  #   @areas = params[:area_name]

  # #byebug

  #   if params[:format].present?
  #     @properties = Property.where(id: @formats)
  #   elsif  @tags != ["", "", "", ""] && @areas != [""]
  #     @properties =  Property.includes(:tag_properties).where(tag_properties: {tag_id: @tags }).where(area_id: @areas)
  #   elsif @tags != ["", "", "", ""] && @areas == [""]
  #     @properties =  Property.includes(:tag_properties).where(tag_properties: {tag_id: @tags })
  #   elsif @tags == ["", "", "", ""] && @areas != [""]
  #     @properties =  Property.where(area_id: @areas)
  #   else
  #     @properties =  Property.all
  #   end

      #Parent.includes(:children).where(children: {name: "taro"})
      #Child.includes(:parent).where(:parents: {name: "takashi"})
      #njnnjjjjjnn[;kl[Child.where(name: "taro")

    # if params[:tag_id]
    #   @tag=Tag.find(params[:tag_id])
    #   @properties = @tag.properties
    # elsif params[:area_id]
    #   @area = Area.find(params[:area_id])
    #   @properties = @area.properties
    # end

    # @items = []
    # @properties.each do |property|
    #   @items << property.id
    # end
    # @items = @properties.ids # 上と同義。エラーが出るようなら上記と入れ替え

    #@properties = params[:tag_id].present? ? Tag.find(params[:tag_id]).properties : Property.all  4.5.10行目を合わせてるだけ
     #@property=Property.find(params[:id])

    # 配列の中の空要素を取り除く

    @areas = params[:area_name].reject(&:empty?)
    @tags = params[:tag].reject(&:empty?)

    if @areas.blank? == false && @tags.blank? == true
      # エリア検索
      @properties = Property.where(area_id: @areas)
    elsif @areas.blank? == true && @tags.blank? == false
      # タグ検索
      @properties = Property.includes(:tag_properties).where(tag_properties: {tag_id: @tags })
    elsif @areas.blank? == false && @tags.blank? == false
      # 複合検索
      @properties = Property.includes(:tag_properties).where(tag_properties: {tag_id: @tags }).where(area_id: @areas)
    elsif @areas.blank? == true && @tags.blank? == true
      # すべて表示
      @properties = Property.all
    end


  end

  def map
    @property=Property.find(params[:property_id])
  end

  def index
    @properties=Property.all
  end

  def show
    @property=Property.find(params[:id])
  end


end
#違うURLで同じアクションに飛びたい時は一つにルーティングをまとめ
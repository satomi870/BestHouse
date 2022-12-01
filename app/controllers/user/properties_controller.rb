class User::PropertiesController < ApplicationController

  def search
  #before_action :set_ransack, only: [:index, :search]
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
    #@area_groups = params[:area_group_name].reject(&:empty?)
    if params[:from_top]
      @area_groups = params[:area_group_id]
      @areas = params[:area_id]
      @tags = params[:tag_id]
    else
      #@area_groups = params[:area_group_name].reject(&:empty?) aboutの場合
      @areas = params[:area_name].reject(&:empty?)
      @tags = params[:tag].reject(&:empty?)
    end

    if @areas.blank? == false && @tags.blank? == true
      # エリア検索
    #if @area_groups.blank? == false && @tags.blank? == true
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

    if @area_groups.blank? == false && @tags.blank? == true
      # エリア検索
    #if @area_groups.blank? == false && @tags.blank? == true
        @properties = Property.where(area_group_id: @area_groups)
    elsif @area_groups.blank? == true && @tags.blank? == false
      # タグ検索
      @properties = Property.includes(:tag_properties).where(tag_properties: {tag_id: @tags })

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
    history = @property.histories.new
    history.user_id = current_user.id
    if current_user.histories.exists?(property_id: "#{params[:id]}")
      old_history = current_user.histories.find_by(property_id: "#{params[:id]}")
      old_history.destroy
    end
    history.save

    #@review_relation = Review.new#()ないは関係性ページの値を受け取るために設置
    @review = Review.new
    @reviews=@property.reviews
    @question = Question.new
    @questions = @property.questions
    # @questions = @property.questions.where("answer_flg = false")
    @comment = Comment.new
    @comment_comment = CommentComment.new
    @rule = Rule.new
    @rules = @property.rules


    if Read.create(question_id: @question.id, user_id: current_user.id)
      @read = Read.update(complete: true)
    end

    #@results = @ransack.result

  end

  #private

  # def set_ransack
  #   @ransack = Property.ransack(params[:ransack])
  # end


end
#違うURLで同じアクションに飛びたい時は一つにルーティングをまとめ
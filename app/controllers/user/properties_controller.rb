class User::PropertiesController < ApplicationController
  #before_action :set_ransack, only: [:search_keyword]

  def search
    # 配列の中の空要素を取り除く
    #@area_groups = params[:area_group_name].reject(&:empty?)
    if params[:from_top].present?
      @area_groups = params[:area_group_id]
      @areas = params[:area_id]
      @tags = params[:tag_id]
    else
      #@area_groups = params[:area_group_name].reject(&:empty?) #aboutの場合
      # @areas = []
      # unless params[:area_group_id].nil?
      #   params[:area_group_id].reject(&:empty?).each do |id|
      #     if (id != "")
      #       @areas.push(id.to_i)
      #     end
      #   end
      # end

      @areas = []
      if params[:area_id].present?
        @areas = params[:area_id].reject(&:empty?)
      end

      @tags = []
      unless params[:tag_id].nil?
        params[:tag_id].reject(&:empty?).each do |id|
          if (id != "")
            @tags.push(id.to_i)
          end
        end
      end
      # @tags = params[:tag_id].reject(&:empty?)
      # p @tags
    end

    # 未入力の場合は全件が対象
    @properties = Property.page(params[:page])
    # エリア関連の検索処理
    @checkd_areas = []
    if @areas.blank? == false
      @properties = @properties.where(area_id: @areas).page(params[:page])
      @checkd_areas = @areas
    elsif @area_groups.blank? == false && @tags.blank? == true
      @properties = @properties.where(area_group_id: @area_groups)
      @checkd_areas = Area.where(area_group_id: @area_groups).ids
    end
    # タグの検索処理
    if @tags.blank? == false
      @properties = @properties.includes(:tag_properties).where(tag_properties: {tag_id: @tags })
    end

    # 金額の条件
    if (params[:lower_rent] && !params[:lower_rent].to_i.zero?) && (params[:upper_rent] && !params[:upper_rent].to_i.zero?)
      @properties = @properties.where(rent: params[:lower_rent].to_i..params[:upper_rent].to_i)
    elsif (params[:lower_rent] && params[:lower_rent].to_i.zero?) && (params[:upper_rent] && !params[:upper_rent].to_i.zero?)
      @properties = @properties.where(rent: ..params[:upper_rent].to_i)
    elsif (params[:lower_rent] && !params[:lower_rent].to_i.zero?) && (params[:upper_rent] && params[:upper_rent].to_i.zero?)
      @properties = @properties.where(rent: params[:lower_rent].to_i..)
    end

      #@results = @ransack.result

    basic = Category.find_by(category: "basic") #カテゴリわけwhereを使うパターンもある　rails 検索　やり方
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags

    #検索条件を検索希望一覧画面で表示
    @tag_list = Tag.where(id: @tags)
    @area_list = Area.where(id: @areas)
    @area_group_list = AreaGroup.where(id: @area_groups)

    lower_rent = params[:lower_rent]
    upper_rent = params[:upper_rent]

    #下限と上限の金額の桁数を変数に入れている
    digits_lower_rent = lower_rent&.length
    digits_upper_rent = upper_rent&.length

    #表示する金額の0を4つとる
    @display_lower_amount = lower_rent&.slice(0, digits_lower_rent - 4) || "0"
    @display_upper_amount = upper_rent&.slice(0, digits_upper_rent - 4) || "0"

    @tags=Tag.all

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags

    other = Category.find_by(category: "other")
    @other_tags=other.tags

    @lower_rent = params[:lower_rent].to_i
    @upper_rent = params[:upper_rent].to_i
  end

  def search_keyword
    # @results = @ransack.result
    #曖昧検索
    @properties = Property.where("access LIKE ?", "%#{params[:keyword]}%")
    .or(Property.where("address LIKE ?", "%#{params[:keyword]}%"))
    #.or(Property.where("property_name LIKE ?", "%#{params[:keyword]}%"))

    basic = Category.find_by(category: "basic") #カテゴリわけwhereを使うパターンもある　rails 検索　やり方
    @basic_tags=basic.tags

    room = Category.find_by(category: "room")
    @room_tags=room.tags

    @tags=Tag.all

    surrounding = Category.find_by(category: "surrounding")
    @surrounding_tags=surrounding.tags

    shared_facility = Category.find_by(category: "shared_facility")
    @shared_facility_tags=shared_facility.tags

    other = Category.find_by(category: "other")
    @other_tags=other.tags
　　
    @checkd_areas = Area.where("area_name LIKE ?", "#{params[:keyword]}%").pluck(:id)
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
    #閲覧履歴
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
   
    #星評価の平均点を算出
    @avg_score = Review.where(property_id: params[:id]).average(:score)
    #ラジオボタンレビュー項目の平均点を算出
    @avg_atmosphere = Review.where(property_id: params[:id]).average(:atmosphere) ? Review.where(property_id: params[:id]).average(:atmosphere).round(0) : 0
    @avg_distance_sence = Review.where(property_id: params[:id]).average(:distance_sense) ? Review.where(property_id: params[:id]).average(:atmosphere).round(0) : 0
    @avg_cleanliness_shared  = Review.where(property_id: params[:id]).average(:cleanliness_shared) ? Review.where(property_id: params[:id]).average(:cleanliness_shared).round(0) : 0
    @avg_noise = Review.where(property_id: params[:id]).average(:noise) ? Review.where(property_id: params[:id]).average(:noise).round(0) : 0
    @avg_net_spead = Review.where(property_id: params[:id]).average(:net_speed) ? Review.where(property_id: params[:id]).average(:net_speed).round(0) : 0
    @avg_shower = Review.where(property_id: params[:id]).average(:shower) ? Review.where(property_id: params[:id]).average(:shower).round(0) : 0
    @avg_event = Review.where(property_id: params[:id]).average(:event) ? Review.where(property_id: params[:id]).average(:event).round(0) : 0
   
  end
end
#違うURLで同じアクションに飛びたい時は一つにルーティングをまとめ



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

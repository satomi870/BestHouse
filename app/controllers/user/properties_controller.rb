class User::PropertiesController < ApplicationController
  before_action :authenticate_user!, except: [:search, :index]
  before_action :set_tags

  def search
    #topページの検索の場合
    if params[:from_top].present?
      @area_groups = params[:area_group_id]
      @tags = if params[:tag_id].present?#三項演算子
                [params[:tag_id].to_i]
              else
                nil
              end
      #@tags =params[:tag_id].present? ? [params[:tag_id].to_i] : nil

    else
      #複数検索の場合
      @areas = []
      if params[:area_id].present?
        @areas = params[:area_id].reject(&:empty?)
      end
      @tags = []
      if ! params[:tag_id].nil?
        params[:tag_id].reject(&:empty?).each do |id|
          if (id != "")
            @tags.push(id.to_i)
          end
        end
      end
    end


    # 未入力の場合全件が対象
    @properties = Property.all
    # エリア関連の検索処理
    @checkd_areas = []
    if !@areas.blank?
      @properties = @properties.where(area_id: @areas)
      @checkd_areas = @areas
    elsif !@area_groups.blank? && @tags.blank?
      @properties = @properties.where(area_group_id: @area_groups)
      @checkd_areas = Area.where(area_group_id: @area_groups).ids
    end

    if !@tags.blank?
      property_ids = @properties.pluck(:id)
      @tags.each do | tag_id |
        property_ids = Property.joins(:tags).where(id: property_ids).where(tags: {id: tag_id}).pluck(:id)
      end
      @properties = Property.where(id: property_ids)
    end

    # 金額の条件
    if (params[:lower_rent] && !params[:lower_rent].to_i.zero?) && (params[:upper_rent] && !params[:upper_rent].to_i.zero?)#ボッチ演算子
      @properties = @properties.where(rent: params[:lower_rent].to_i..params[:upper_rent].to_i)
    elsif (params[:lower_rent] && params[:lower_rent].to_i.zero?) && (params[:upper_rent] && !params[:upper_rent].to_i.zero?)
      @properties = @properties.where(rent: ..params[:upper_rent].to_i)
    elsif (params[:lower_rent] && !params[:lower_rent].to_i.zero?) && (params[:upper_rent] && params[:upper_rent].to_i.zero?)
      @properties = @properties.where(rent: params[:lower_rent].to_i..)
    end
    @properties_count = @properties.count
    @properties = @properties.page(params[:page]).per(10)

    #検索条件を検索希望一覧画面で表示するため
    @tag_list = Tag.where(id: @tags)
    @area_list = Area.where(id: @areas)
    @area_group_list = AreaGroup.where(id: @area_groups)

    if params[:lower_rent]
      @display_lower_amount =  params[:lower_rent].slice(0,  params[:lower_rent].length - 4)
    end
    if params[:upper_rent]
      @display_upper_amount =  params[:upper_rent].slice(0,  params[:upper_rent].length - 4)
    end

    #再検索用
    @tags=Tag.all

    #キーワード検索の処理
    @keyword = params[:keyword]
    if !@keyword.blank?
      @properties= Property.where("access LIKE ?", "%#{params[:keyword]}%")#モデルでスコープで書く
      .or(Property.where("address LIKE ?", "%#{params[:keyword]}%"))
      .or(Property.where("rent LIKE ?", "%#{params[:keyword]}%"))
      .or(Property.where("property_name LIKE ?", "%#{params[:keyword]}%"))

      @properties_count = @properties.count
      @properties = @properties.page(params[:page]).per(10)

      @checkd_areas = Area.where("area_name LIKE ?", "#{params[:keyword]}%").pluck(:id)
    end
  end

  def index
  end

  def show
    @property=Property.find(params[:id])
    #閲覧履歴
    history = @property.histories.new
    history.user_id = current_user.id
    if current_user.histories.exists?(property_id: "#{params[:id]}")
      old_history = current_user.histories.find_by(property_id: "#{params[:id]}")
      old_history.destroy
    end
    history.save

    @review = Review.new
    @reviews=@property.reviews
    @question = Question.new
    @questions = @property.questions
    @comment = Comment.new
    @comment_comment = CommentComment.new
    @rule = Rule.new
    @rules = @property.rules

    #星評価の平均点を算出
    @avg_score = Review.where(property_id: params[:id]).average(:score)
  end

  def map
    @property=Property.find(params[:property_id])
  end
end






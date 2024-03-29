class Property < ApplicationRecord
  has_many_attached :images

  has_many :tag_properties, dependent: :destroy
  has_many :tags, through: :tag_properties
  belongs_to :area
  has_many :reviews, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :contactss, dependent: :destroy
  has_many :histories, dependent: :destroy
  has_many :rules,dependent: :destroy

 def favorited_by?(user)
    favorites.exists?(user_id: user.id)
 end

  RENT_TABLE = [
    { ja_rent: '3万', rent: 30000 },
    { ja_rent: '4万', rent: 40000 },
    { ja_rent: '5万', rent: 50000 },
    { ja_rent: '6万', rent: 60000 },
    { ja_rent: '7万', rent: 70000 },
    { ja_rent: '8万', rent: 80000 },
    { ja_rent: '9万', rent: 90000 },
    { ja_rent: '10万', rent: 100000 },
    { ja_rent: '11万', rent: 110000 },
    { ja_rent: '12万', rent: 120000 },
    { ja_rent: '13万', rent: 130000 },
    { ja_rent: '14万', rent: 140000 },
    { ja_rent: '15万', rent: 150000 },

    # { ja_rent: '上限なし', rent: 0 }
  ]

  def self.lower_select_rent_table
    ( [{ ja_rent: '下限なし', rent: 0 }]+ RENT_TABLE ).map { |table| [table[:ja_rent], table[:rent]] }
  end

  def self.upper_select_rent_table
    ( [{ ja_rent: '上限なし', rent: 0 }] + RENT_TABLE ).map { |table| [table[:ja_rent], table[:rent]] }
  end

  def self.select_rent_table
    RENT_TABLE.map { |table| [table[:ja_rent], table[:rent]] }
  end

  def self.popular_ranking(review, count)
    review_avg = Review.group(:property_id)
                       .order("avg(#{review}) desc")
                       .select("property_id, avg(#{review}) as property_review_avg")
    Property.find(review_avg.select { |review| review.property_review_avg >= 3.0 }
            .pluck(:property_id))
            .first(count)
  end


  def self.many_favorite
    self.all.sort { |x, y| y.favorites.count <=> x.favorites.count }.reject { _1.favorites.count == 0 }
  end
end
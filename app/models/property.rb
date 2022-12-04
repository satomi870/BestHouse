class Property < ApplicationRecord
  has_one_attached :image

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
    { ja_rent: '3万', rent: 30_000 },
    { ja_rent: '4万', rent: 40_000 },
    { ja_rent: '5万', rent: 50_000 },
    { ja_rent: '6万', rent: 60_000 },
    { ja_rent: '7万', rent: 70_000 },
    { ja_rent: '8万', rent: 80_000 },
    { ja_rent: '9万', rent: 90_000 },
    { ja_rent: '10万', rent: 100_000 },
    { ja_rent: '11万', rent: 110_000 },
    { ja_rent: '12万', rent: 120_000 },
    { ja_rent: '13万', rent: 130_000 },
    { ja_rent: '14万', rent: 140_000 },
    { ja_rent: '15万', rent: 150_000 },

    # { ja_rent: '上限なし', rent: 0 }
  ]

  def self.lower_select_rent_table
    (RENT_TABLE + [{ ja_rent: '下限なし', rent: 0 }]).map { |table| [table[:ja_rent], table[:rent]] }
  end

  def self.upper_select_rent_table
    (RENT_TABLE + [{ ja_rent: '上限なし', rent: 0 }]).map { |table| [table[:ja_rent], table[:rent]] }
  end

  def self.select_rent_table
    RENT_TABLE.map { |table| [table[:ja_rent], table[:rent]] }
  end
end
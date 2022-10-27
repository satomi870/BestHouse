class Property < ApplicationRecord
  has_one_attached :image

  has_many :tag_properties, dependent: :destroy
  has_many :tags, through: :tag_properties
  belongs_to :area
  has_many :reviews, dependent: :destroy






end
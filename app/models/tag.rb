class Tag < ApplicationRecord
  has_many :tag_properties, dependent: :destroy
  has_many :properties, through: :tag_properties
  belongs_to :category
  
end

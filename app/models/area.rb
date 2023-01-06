class Area < ApplicationRecord
  has_many :properties, dependent: :destroy
  belongs_to :area_group
end


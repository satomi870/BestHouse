class Area < ApplicationRecord
  has_many :properties, dependent: :destroy
end

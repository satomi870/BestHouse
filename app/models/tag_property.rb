class TagProperty < ApplicationRecord
  has_many_attached :images
  belongs_to :property
  belongs_to :tag
end

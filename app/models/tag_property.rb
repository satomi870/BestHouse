class TagProperty < ApplicationRecord
  belongs_to :property
  belongs_to :tag
end

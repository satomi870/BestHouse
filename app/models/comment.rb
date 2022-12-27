class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :notifications, dependent: :destroy
  has_many :comment_comments
   enum relation:  {resident: 0, former_resident: 1, kentosya: 3, yoteisya: 4, syuhenjunin: 5, chizin: 6, oya: 7, kankeisya: 8, sonota: 9 }

  validates :body, presence: true
  validates :relation, presence: true
end

class Question < ApplicationRecord
   belongs_to :user
   belongs_to :property
   has_many :comments, dependent: :destroy
   has_many :notifications, dependent: :destroy
   has_many :comment_comments, through: :comments
   has_many :reads, dependent: :destroy
   enum relation:  {resident: 0, former_resident: 1, kentosya: 3, yoteisya: 4, syuhenjunin: 5, chizin: 6, oya: 7, kankeisya: 8, sonota: 9 }
end

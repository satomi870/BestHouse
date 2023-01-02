class Question < ApplicationRecord
   belongs_to :user
   belongs_to :property
   has_many :comments, dependent: :destroy
   has_many :notifications, dependent: :destroy
   has_many :comment_comments, through: :comments
   enum relation:  {resident: 0, former_resident: 1, kentosya: 3, yoteisya: 4, syuhenjunin: 5, chizin: 6, oya: 7, kankeisya: 8, sonota: 9 }
   #enum relation_detail: { twenty_two: 0, twenty_one: 1, twenty: 2, nineteen: 3, eighteen: 4, before_that: 5, kentosya: 6, yoteisya: 7, syuhenjunin: 8, chizin: 9, oya: 10, kankeisya: 11, sonota: 12 }

   validates :title, presence: true, length: { in: 1..100 }
   validates :body, presence: true,length: { in: 10..1000 }
   validates :relation, presence: true
end

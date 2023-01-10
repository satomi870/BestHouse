class Review < ApplicationRecord
   has_one_attached :image
   belongs_to :user
   belongs_to :property

   enum relation: { resident: 0, former_resident: 1, others: 2 }
   enum relation_detail: { twenty_two: 0, twenty_one: 1, twenty: 2, nineteen: 3, eighteen: 4, before_that: 5, kentosya: 6, yoteisya: 7, syuhenjunin: 8, chizin: 9, oya: 10, kankeisya: 11, sonota: 12, now_resident: 13 }

   validates :title, presence: true, length: { in: 1..100}
   validates :body, presence: true, length: { in: 7..1000}
   validates :relation, presence: true
   validates :relation_detail, presence: true
   validates :score, presence: true
   validates :atmosphere, presence: true
   validates :distance_sense, presence: true
   validates :noise, presence: true
   validates :cleanliness_shared, presence: true
   validates :congestion_shared, presence: true
   validates :net_speed, presence: true
   validates :shower, presence: true
   validates :event, presence: true
end

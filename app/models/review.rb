class Review < ApplicationRecord
   has_one_attached :image
   belongs_to :user
   belongs_to :property
   #has_many :notifications, dependent: :destro
   enum relation: { resident: 0, former_resident: 1, others: 2 }
   enum relation_detail: { twenty_two: 0, twenty_one: 1, twenty: 2, nineteen: 3, eighteen: 4, before_that: 5, kentosya: 6, yoteisya: 7, syuhenjunin: 8, chizin: 9, oya: 10, kankeisya: 11, sonota: 12 }
   #enum atmosphere: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   #enum cleanliness_shared: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   #enum congestion_shared: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   #enum noise_shared: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   #enum noise_room: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   # enum net_speed: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   #enum shower: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   #enum event: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   validates :title, presence: true, length: { in: 1..100}
   validates :text, presence: true, length: { in: 10..1000 }
   validates :relation, presence: true
   validates :atmosphere, presence: true
   validates :cleanliness_shared, presence: true
   validates :congestion_shared, presence: true
   validates :noise, presence: true
   validates :distance_sense, presence: true
   validates :net_speed, presence: true
   validates :shower, presence: true
   validates :event, presence: true
   validates :repeat, presence: true




end

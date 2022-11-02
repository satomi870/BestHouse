class Review < ApplicationRecord
   belongs_to :user
   belongs_to :property
   enum relation: { resident: 0, former_resident: 1, others: 2 }
   enum relation_detail: { twenty_two: 0, twenty_one: 1, twenty: 2, nineteen: 3, eighteen: 4, before_that: 5, kentosya: 6, yoteisya: 7, syuhenjunin: 8, chizin: 9, oya: 10, kankeisya: 11, sonota: 12 }
   enum atmosphere: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   enum cleanliness_shared: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   enum congestion_shared: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   enum noise_shared: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   enum noise_room: { excellent: 0, very_good: 1, good: 2, average: 3, poor: 4 }, _prefix: true
   

end

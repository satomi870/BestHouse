class Kokoent < ApplicationRecord
  belongs_to :user
  belongs_to :question
  #has_many :answer_comments, dependent: :destroy
  enum answer:  {resident: 0, former_resident: 1, kentosya: 3, yoteisya: 4, syuhenjunin: 5, chizin: 6, oya: 7, kankeisya: 8, sonota: 9 }
end
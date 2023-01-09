class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :active_notifications, class_name: "Notification", foreign_key: "sender_id", dependent: :destroy
  has_many :passive_notifications, class_name: "Notification", foreign_key: "receiver_id", dependent: :destroy
  has_many :comment_comments, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :histories, dependent: :destroy
  has_many :rules, dependent: :destroy

  validates :nickname, presence: true
  validates :gender, presence: true
  validates :age, presence: true

end
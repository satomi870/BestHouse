class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :active_notifications, class_name: "Notification", foreign_key: "sender_id", dependent: :destroy
  has_many :passive_notifications, class_name: "Notification", foreign_key: "receiver_id", dependent: :destroy
  has_many :comment_comments, dependent: :destroy
  has_many :contacts, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end


end
class Contact < ApplicationRecord
  belongs_to :property
  belongs_to :user

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :gender, presence: true
  validates :age, presence: true, format: { with: /\A[0-9]+\z/ }
  validates :nationality, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :telephone_number, format: { with: /\A[0-9]+\z/ }, if: -> { telephone_number.present? }
  validates :schedule, presence: true
  validates :hope, presence: true
  validates :contact, presence: true
end
class Notification < ApplicationRecord
  #belongs_to :question, optional: true
  #belongs_to :comment, optional: true
 # belongs_to :review, optional: true
  #belongs_to :original_comment, class_name: 'Comment', optional: true
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id', optional: true
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id', optional: true
end

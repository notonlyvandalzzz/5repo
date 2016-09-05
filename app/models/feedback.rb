class Feedback < ApplicationRecord
  validates :email, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end

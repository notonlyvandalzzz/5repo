class Feedback < ApplicationRecord
  validates :email, presence: true
  validates :content, presence: true, length: { minimum: 5, too_short: "Message must be minimum 5chr" }
end

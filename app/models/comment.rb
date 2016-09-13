class Comment < ApplicationRecord
  belongs_to :article

  validates :author, presence: true
  validates :body, presence: true, length: { in: 1..140 }
end

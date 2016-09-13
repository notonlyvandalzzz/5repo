class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true, length: { minimum: 5 }
  has_many :comments
  belongs_to :user
end

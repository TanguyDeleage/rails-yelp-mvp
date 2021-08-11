class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, format: { with: /\A[0-5]\z/ }, numericality: { only_integer: true }
end

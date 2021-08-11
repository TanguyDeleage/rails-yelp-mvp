class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  AUTHORIZED_CATEGORIES = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: AUTHORIZED_CATEGORIES }
end

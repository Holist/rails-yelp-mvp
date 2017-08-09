class Review < ApplicationRecord

  belongs_to :restaurant
  validates :rating, inclusion: { in: 0..5, allow_nil: false }
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: true
  validates :content, presence: true
  validates :restaurant_id, presence: true

end

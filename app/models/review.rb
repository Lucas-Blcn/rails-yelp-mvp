class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
  # Les deux dernières règles peuvent se refacto comme suit :
  # validates :rating, numericality:
  # { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end

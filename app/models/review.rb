class Review < ApplicationRecord
  validates :rating, presence: true, numericality: {less_than_or_equal_to: 5}
  validates :comment, presence: true, length: { minimum: 5 }
  belongs_to :restaurant
end

class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :rating, presence: true
end

class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :stops, dependent: :destroy
  has_many :sights, through: :stops
end

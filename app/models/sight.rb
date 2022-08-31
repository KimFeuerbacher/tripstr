class Sight < ApplicationRecord
  belongs_to :category
  belongs_to :city
  has_many :stops
  has_many_attached :photos
  validates :name, :latitude, :longitude, :address, presence: true, uniqueness: true
  validates :short_description, :long_description, presence: true
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
end

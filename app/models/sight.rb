class Sight < ApplicationRecord
  belongs_to :category
  belongs_to :city
  has_many :stops
  has_many_attached :photos
  validates :name, :latitude, :longitude, :address, presence: true, uniqueness: true
  validates :short_description, :long_description, presence: true
end

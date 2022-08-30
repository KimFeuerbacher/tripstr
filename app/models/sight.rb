class Sight < ApplicationRecord
  belongs_to :category
  belongs_to :city
  has_many_attached :photos
  validates :name, :latitude, :longitude, :address, :short_description, :long_description, presence: true, uniqueness: true
end

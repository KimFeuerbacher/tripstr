class City < ApplicationRecord
  has_many :sights
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end

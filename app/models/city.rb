class City < ApplicationRecord
  has_many :sights
  validates :name, presence: true, uniqueness: true
end

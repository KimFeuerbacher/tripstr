class Category < ApplicationRecord
  has_many :sights
  validates :title, presence: true, uniqueness: true
  has_one_attached :photo
end

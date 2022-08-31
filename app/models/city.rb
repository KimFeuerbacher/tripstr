class City < ApplicationRecord
  has_many :sights
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
  against: [ :name],
  using: {
    tsearch: { prefix: true }
  }
end

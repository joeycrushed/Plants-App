class Plant < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  include PgSearch::Model
  pg_search_scope :search_by_name_and_description, against: [:name, :description],
  using: {
    tsearch: { prefix: true }
  }
end

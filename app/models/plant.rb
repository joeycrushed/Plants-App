class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, uniqueness: true, presence: true
  validates :image, presence: true
  validates :description, presence: true
end

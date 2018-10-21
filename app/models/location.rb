class Location < ApplicationRecord
  has_many :flats
  has_many :events
  validates :name, presence: true
  validates :open, inclusion: { in: [true, false] }
end

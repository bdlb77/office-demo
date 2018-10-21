class Event < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :tenants, through: :event_bookings
  has_many :event_bookings

  validates :name, presence: true
  validates :date, presence: true
  validates :capacity, presence: true
  validates :address, presence: true
end

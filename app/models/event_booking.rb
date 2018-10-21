class EventBooking < ApplicationRecord
  belongs_to :event
  belongs_to :tenant
  validates :expired, inclusion: { in: [true, false] }
  validates :approved, inclusion: { in: [true, false] }
end

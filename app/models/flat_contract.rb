class FlatContract < ApplicationRecord
  belongs_to :tenant
  belongs_to :flat
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
end

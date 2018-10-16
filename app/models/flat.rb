class Flat < ApplicationRecord
  belongs_to :location
  has_many :tenants, through: :flat_contracts
  validates :flat_type, presence: true
  validates :availability, presence: true
  validates :address, presence: true
  validates :occupancy, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true 

end

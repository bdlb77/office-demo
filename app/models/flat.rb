class Flat < ApplicationRecord
  belongs_to :location
  has_many :flat_contracts
  has_many :tenants, through: :flat_contracts
  validates :flat_type, presence: true
  validates :availability, inclusion: { in: [ true, false ] }
  validates :address, presence: true
  validates :occupancy, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true 
  validates :flat_number, presence: true 


  def available?
  	availability =  tenants.count < occupancy 
  end

  


end

class Location < ApplicationRecord
	has_many :flats
	validates :name, presence: true
	validates :open, inclusion: { in: [ true, false ] }
end

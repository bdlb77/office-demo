class Location < ApplicationRecord
	has_many :flats
	validates :name, presence: true
	validates :open, presence: true
end

class Tenant < ApplicationRecord

	has_many :flat_contracts
	has_many :flats, through: :flat_contracts
	has_many :event_bookings	
	has_many :events, through: :event_bookings
	validates :first_name, presence: true
	validates :last_name, presence: true
	#  format for email validation
	validates :email, presence: true, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: 'Only valid emails allowed'
  }
	validates :birthday, presence: true
	validates :username, presence: true

		def formated_number
			formatted_phone_number(phone_number)
		end
	# formated_number = formatted_phone_number(phone_number)
end

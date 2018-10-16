class Tenant < ApplicationRecord
	has_many :flats, through: :flat_contracts
	validates :first_name, presence: true
	validates :last_name, presence: true
	#  format for email validation
	validates :email, presence: true, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: 'Only valid emails allowed'
  }
	validates :birthday, presence: true
	validates :username, presence: true
end

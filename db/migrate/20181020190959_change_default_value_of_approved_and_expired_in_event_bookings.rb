class ChangeDefaultValueOfApprovedAndExpiredInEventBookings < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :event_bookings, :approved, false
  	change_column_default :event_bookings, :expired, false
  end
end

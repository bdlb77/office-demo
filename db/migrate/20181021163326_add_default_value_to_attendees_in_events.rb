class AddDefaultValueToAttendeesInEvents < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :events, :attendees, 0
  end
end

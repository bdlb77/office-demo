class ChangePhoneNumberToPhoneInTenants < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :tenants, :phone_number, :phone
  end
end

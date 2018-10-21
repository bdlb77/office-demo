module TenantsHelper
  include ActionView::Helpers::NumberHelper

  def format_phone(phone_number)
    number_to_phone(phone_number, delimiter: "-")
  end
end

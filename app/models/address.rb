class Address < ApplicationRecord
  belongs_to :customer

  validates :postcode, presence: true, format: {with: /\A\d{7}\z/}
  validates :address, presence: true
  validates :name, presence: true


  def address_display
    '〒' + postcode + ' ' + address + ' ' + name + ' 様 '
  end

end

class Address < ApplicationRecord
  belongs_to :customer
  
  validates :postcode, presence: true, format: {with: /\A\d{7}\z/}
  validates :address, presence: true
  validates :name, presence: true
end

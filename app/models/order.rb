class Order < ApplicationRecord
  has_many :order_details
  belongs_to :customer

  validates :postcode, presence: true
  validates :address, presence: true
  validates :name, presence: true

  enum pay_type: { credit_card: 0, transfer: 1 }
  enum status: { wait: 0, check: 1, making: 2, prepare: 3, complete: 4 }

end

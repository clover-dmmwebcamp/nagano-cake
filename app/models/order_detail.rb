class OrderDetail < ApplicationRecord
  enum making_status: { impossible: 0, wait: 1, making: 2, complete: 3 }

  belongs_to :order
  belongs_to :product

  # 商品ごとの税込合計金額
  def total_price
    include_tax * quantity
  end
end

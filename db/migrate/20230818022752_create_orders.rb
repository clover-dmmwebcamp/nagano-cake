class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.integer :delivery_cost, null: false
      t.integer :pay_type, null: false, default: 0
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.integer :total_pay, null: false
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end

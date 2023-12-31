class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :category_id, null: false
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :without_tax, null: false
      t.boolean :is_active, null: false, default: true
      t.timestamps
    end
  end
end

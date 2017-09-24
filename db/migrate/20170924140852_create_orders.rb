class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :address
      t.string :cart_items
      t.decimal :delivery_cost
      t.decimal :total_cost

      t.timestamps
    end
  end
end

class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.1]
  def self.up
    change_table :orders do |t|
      t.change :cart_items, :text
    end
  end
  def self.down
    change_table :orders do |t|
      t.change :cart_items, :string
    end
  end
end

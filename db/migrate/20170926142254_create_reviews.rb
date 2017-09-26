class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.text :review_text
      t.references :menu_item, foreign_key: true

      t.timestamps
    end
  end
end

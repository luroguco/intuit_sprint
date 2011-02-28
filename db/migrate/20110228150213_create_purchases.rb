class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.float :price
      t.string :where
      t.datetime :when
      t.integer :rating
      t.string :category
      t.text :comment
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end

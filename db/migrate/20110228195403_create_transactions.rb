class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.date :date
      t.string :description
      t.string :original_description
      t.float :amount
      t.string :type
      t.string :category
      t.string :label
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end

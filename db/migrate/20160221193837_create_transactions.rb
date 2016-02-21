class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :prix
      t.integer :quantity
      t.datetime :date_transaction
      t.references :trader, index: true, foreign_key: true
      t.references :equity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

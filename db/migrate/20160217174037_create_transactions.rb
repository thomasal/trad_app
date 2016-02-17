class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :quantity
      t.datetime :date_transaction

      t.timestamps null: false
    end
  end
end

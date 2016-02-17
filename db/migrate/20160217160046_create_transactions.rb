class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :trader_id
      t.integer :action_id
      t.integer :quantity
      t.datetime :date_transaction

      t.timestamps null: false
    end
  end
end

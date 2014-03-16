class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transaction_id
      t.string :hash
      t.string :email
      t.integer :totalBTC
      t.string :order_id
      t.integer :totalUSD

      t.timestamps
    end

    add_index :transactions, :email
  end
end

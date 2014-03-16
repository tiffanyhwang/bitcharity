class AddCharityRefToTransactions < ActiveRecord::Migration
  def change
    add_reference :transactions, :charity, index: true
  end
end

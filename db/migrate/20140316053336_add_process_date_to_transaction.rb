class AddProcessDateToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :process_date, :date
  end
end

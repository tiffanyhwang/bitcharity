class FixUserTotalColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :total, :amount
  end
end

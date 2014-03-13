class AddButtonCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :button_code, :string
  end
end

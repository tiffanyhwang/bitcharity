class AddCharityRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :charity, index: true
  end
end

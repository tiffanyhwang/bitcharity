class Charity < ActiveRecord::Base
  has_many :users
  has_many :transactions
end

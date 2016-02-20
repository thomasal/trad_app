class Trader < ActiveRecord::Base
  has_many :transactionn
  has_many :action, through: :transactionn
end

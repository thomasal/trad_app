class Actio < ActiveRecord::Base
  has_many :transactionn
  has_many :trader, through: :transactionn
end

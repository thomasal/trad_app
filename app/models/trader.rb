class Trader < ActiveRecord::Base
  has_many :transaction
end

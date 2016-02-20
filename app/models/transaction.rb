class Transaction < ActiveRecord::Base
  belongs_to :trader
  belongs_to :actio
end

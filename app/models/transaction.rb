class Transaction < ActiveRecord::Base
  belongs_to :trader, :actio
end

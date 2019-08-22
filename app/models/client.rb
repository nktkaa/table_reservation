class Client < ApplicationRecord
  has_many :table_reserve
  has_many :tables, through: :table_reserve
end

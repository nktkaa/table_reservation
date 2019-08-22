class Table < ApplicationRecord
  has_many :table_reserve
  has_many :clients, through: :table_reserve

  belongs_to :restaurant
end

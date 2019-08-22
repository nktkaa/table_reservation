class TableReserve < ApplicationRecord
  belongs_to :table
  belongs_to :client
end

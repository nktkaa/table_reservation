class Client < ApplicationRecord
  validates :name, :phone, presence: true
  validates_uniqueness_of :phone

  has_many :table_reserve
  has_many :tables, through: :table_reserve
end

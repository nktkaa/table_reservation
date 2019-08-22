class Table < ApplicationRecord
  has_many :table_reserve
  has_many :clients, through: :table_reserve

  belongs_to :restaurant

  def free_at_this_time?(reserve_start, reserve_end)
    table.table_reserve.none? do |reserve|
      ( reserve.reserve_date_start < reserve_start && reserve.reserve_date_end > reserve_start ) ||
          ( reserve.reserve_date_start < reserve_end && reserve.reserve_date_end > reserve_end )
      # need to add another conditions to manage situations when book overlaps previos reserve
    end
  end
end

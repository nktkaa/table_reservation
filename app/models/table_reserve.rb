class TableReserve < ApplicationRecord
  belongs_to :table
  belongs_to :client

  before_create :check_availability

  private

  def check_availability
    raise "You are not able to book with such time" unless table.restaurant.open?(reserve_date_start, reserve_date_end) ||
        interval_valid? || table.free_at_this_time?(reserve_date_start, reserve_date_end)
  end

  def interval_valid?
    (reserve_date_start - reserve_date_end) % 1800 == 0
    # 1800 - 30 minutes
  end

end

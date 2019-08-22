class Restaurant < ApplicationRecord
  has_many :tables

  def open?(reserve_start, reserve_end)
    open_time <= reserve_start && close_time >= reserve_end
  end

  private

  def today_open_time
    Time.now.strftime("%Y-%m-%d ").concat(open_time).to_time
  end

  def today_close_time
    Time.now.strftime("%Y-%m-%d ").concat(close_time).to_time
  end
end

class CreateTableReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :table_reserves do |t|
      t.datetime :reserve_date_start
      t.datetime :reserve_date_end

      t.belongs_to :table
      t.belongs_to :client

      t.timestamps
    end
  end
end

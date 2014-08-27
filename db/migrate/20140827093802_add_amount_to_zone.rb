class AddAmountToZone < ActiveRecord::Migration
  def change
    add_column :zones, :amount, :decimal
  end
end

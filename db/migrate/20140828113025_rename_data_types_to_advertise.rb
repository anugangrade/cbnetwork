class RenameDataTypesToAdvertise < ActiveRecord::Migration
   def up
    change_column :advertises, :branch_id, :integer
    change_column :advertises, :zone_id, :integer
  end

  def down
    change_column :advertises, :branch_id, :string
    change_column :advertises, :zone_id, :string
  end
end

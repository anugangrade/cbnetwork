class RenameFieldToStore < ActiveRecord::Migration

  def self.up
    rename_column :branches, :country, :country_name
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end

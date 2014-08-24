class AddApproveFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :approve, :boolean
  end
end

class AddPhoneNumberToBranch < ActiveRecord::Migration
  def change
    add_column :branches, :phone_number, :string
  end
end

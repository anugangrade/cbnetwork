class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.references :store, index: true

      t.timestamps
    end
  end
end

class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.references :user, index: true
      t.references :subcateogry, index: true
      t.references :cateogry, index: true

      t.timestamps
    end
  end
end

class CreateSubcateogries < ActiveRecord::Migration
  def change
    create_table :subcateogries do |t|
      t.string :name
      t.string :unique_url_string
      t.references :cateogry, index: true

      t.timestamps
    end
  end
end

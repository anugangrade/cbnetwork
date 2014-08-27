class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :description
      t.references :branch, index: true
      t.string :weblink
      t.references :zone, index: true
      t.references :cateogry, index: true
      t.references :subcateogry, index: true

      t.timestamps
    end
  end
end

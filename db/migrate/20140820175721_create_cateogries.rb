class CreateCateogries < ActiveRecord::Migration
  def change
    create_table :cateogries do |t|
      t.string :name
      t.string :unique_url_string

      t.timestamps
    end
  end
end

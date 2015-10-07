class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :ord
      t.text :todotext
      t.date :dat

      t.timestamps null: false
    end
  end
end

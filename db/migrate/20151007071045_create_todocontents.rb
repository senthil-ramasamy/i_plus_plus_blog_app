class CreateTodocontents < ActiveRecord::Migration
  def change
    create_table :todocontents do |t|
      t.string :name
      t.integer :done

      t.timestamps null: false
    end
  end
end

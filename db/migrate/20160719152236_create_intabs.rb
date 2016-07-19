class CreateIntabs < ActiveRecord::Migration
  def change
    create_table :intabs do |t|
      t.integer :tab_id
      t.string :title
      t.string :description
      t.integer :turn
      t.string :template
      t.timestamps null: false
    end
  end
end

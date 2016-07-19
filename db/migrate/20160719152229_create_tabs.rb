class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string :title
      t.string :icon
      t.string :picture
      t.integer :turn
      t.timestamps null: false
    end
  end
end

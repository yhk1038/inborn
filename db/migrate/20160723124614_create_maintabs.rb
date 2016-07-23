class CreateMaintabs < ActiveRecord::Migration
  def change
    create_table :maintabs do |t|
      t.integer :turn
      t.string :icon
      t.integer :intab_id
      t.timestamps null: false
    end
  end
end

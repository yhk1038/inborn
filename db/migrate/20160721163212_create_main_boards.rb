class CreateMainBoards < ActiveRecord::Migration
  def change
    create_table :main_boards do |t|
      t.integer :board_id
      t.integer :board_type  # 1,2,3
      t.timestamps null: false
    end
  end
end

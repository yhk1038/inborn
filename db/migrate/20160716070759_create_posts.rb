class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
        t.string :title     #제목
        t.text :content     #내용

        t.integer :user_id  #user
        t.integer :board_id #board

        t.integer :is_secret#비밀글?
        t.integer :viewcount#조회수
      t.timestamps null: false
    end
  end
end

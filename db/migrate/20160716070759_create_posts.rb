class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
        t.string :title     #제목
        t.string :subtitle  #보조타이틀
        t.text :content     #내용
        t.string :img1
        t.string :img2
        
        t.integer :user_id  #user
        t.integer :board_id #board

        t.integer :is_secret#비밀글?
        t.integer :viewcount#조회수
      t.timestamps null: false
    end
  end
end

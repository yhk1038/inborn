class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
        t.string :title     #타이틀
        t.string :content   #설명 내용
        # t.integer :turn     #Board 메뉴에서 순서

        t.integer :a_read, default: 1   #읽기권한
        t.integer :a_write, default: 1  #쓰기권한
        t.integer :a_list, default: 1   #목록보기권한
        t.integer :a_secret, default: 0 #비밀글 가능여부

        t.integer :intab_id
      t.timestamps null: false
    end
  end
end

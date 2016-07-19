class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
        t.string :title     #타이틀
        t.string :content   #설명 내용
        t.integer :visible  #Board 메뉴에서 가시여부
        t.integer :turn     #Board 메뉴에서 순서

        t.integer :a_read   #읽기권한
        t.integer :a_write  #쓰기권한
        t.integer :a_delete #삭제권한
        t.integer :a_secret #비밀글 가능여부

        t.integer :intab_id
      t.timestamps null: false
    end
  end
end

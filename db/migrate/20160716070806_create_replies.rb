class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
        t.text :content #내용

        t.integer :user_id
        t.integer :post_id

        t.integer :is_secret #비밀덧글?

      t.timestamps null: false
    end
  end
end

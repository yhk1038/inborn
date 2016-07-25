class CreateViewcounts < ActiveRecord::Migration
  def change
    create_table :viewcounts do |t|
      t.string  :ip_address
      t.timestamps null: false
    end
  end
end

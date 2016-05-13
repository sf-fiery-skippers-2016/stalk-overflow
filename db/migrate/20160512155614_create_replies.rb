class CreateReplies < ActiveRecord::Migration
  def change
  	create_table :replies do |t|
  		t.integer :post_id
  		t.string :post_type
  		t.string :body
  		t.integer :user_id

  		t.timestamps null: false
  	end
  	add_index :replies, :post_id
  end
end

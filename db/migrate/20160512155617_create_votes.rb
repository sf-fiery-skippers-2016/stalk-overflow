class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.integer :post_id
  		t.integer :post_type
  		t.integer :user_id

  		t.timestamps null: false
  	end
  	add_index :votes, :post_id
  end
end

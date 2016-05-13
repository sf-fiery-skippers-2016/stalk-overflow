class CreateResponses < ActiveRecord::Migration
  def change
  	create_table :responses do |t|
  		t.integer :post_id
  		t.string :post_type
  		t.string :body
  		t.integer :user_id

  		t.timestamps null: false
  	end
  	add_index :responses, :post_id
  end
end

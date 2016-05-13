class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.integer :user_id
  		t.string :title
  		t.string :body
  		t.integer :top_answer_id

  		t.timestamps null: false
  	end
  end
end

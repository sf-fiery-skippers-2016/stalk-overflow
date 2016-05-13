class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.integer :question_id
  		t.string :body
  		t.integer :user_id
      t.boolean :top_answer, default: false
      # t.integer :top_answer_id

  		t.timestamps null: false
  	end
  end
end

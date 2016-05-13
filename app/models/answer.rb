class Answer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :replies, as: :post
  belongs_to :question
  # belongs_to :loves_me, foreign_key: :top_answer_id, class_name: "Question"
  has_many :votes, as: :post
  belongs_to :user
end

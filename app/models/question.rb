class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :responses, as: :post
  has_many :answers
  has_many :votes, as: :post
  has_one :top_answer, class_name: "Answer"
end

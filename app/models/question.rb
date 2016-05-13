class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :replies, as: :post
  has_many :answers
  has_many :votes, as: :post
  belongs_to :user

  # has_one :top_answer, class_name: "Answer"
end

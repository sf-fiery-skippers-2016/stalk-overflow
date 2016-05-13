class Answer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :responses, as: :post
  belongs_to :question
  has_many :votes, as: :post
end

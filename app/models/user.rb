class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password
  has_many :responses
  has_many :questions
  has_many :answers
  has_many :votes
end

class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :username, presence: true, length: { in: 5..50 }
  has_secure_password
  validates :email, presence: true, length: {maximum: 250}, uniqueness: true
  validates :email, format: {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}


  has_secure_password
  has_many :responses
  has_many :questions
  has_many :answers
  has_many :votes
end

class Reply < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :post, polymorphic: true
  has_many :votes, as: :post
  belongs_to :user
end

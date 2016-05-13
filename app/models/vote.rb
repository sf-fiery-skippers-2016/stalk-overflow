class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :post, polymorphic: true
  belongs_to :user
end

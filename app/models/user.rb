class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :photos
  has_many :albums
end

class Song < ActiveRecord::Base
  has_many :likes
  has_many :comments
end

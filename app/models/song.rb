class Song < ActiveRecord::Base
  has_many :likes
  has_many :comments
  validates :title, :embed_code, presence: true
end
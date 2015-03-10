class Comment < ActiveRecord::Base
  belongs_to :song
  scope :recent, -> { order('created_at DESC') }
end
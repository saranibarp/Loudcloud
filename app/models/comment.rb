class Comment < ActiveRecord::Base
  belongs_to :song
  validates :song_id, :body, presence: true
  scope :recent, -> { order('created_at DESC') }
end
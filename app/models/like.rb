class Like < ActiveRecord::Base
  belongs_to :song
  validates :song_id, presence: true
end
class Like < ActiveRecord::Base
  belongs_to :song

  def count(song)
    song.likes.count
  end
end
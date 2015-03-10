class SongsController < ApplicationController
  def index
    @songs = Song.all
    @like = Like.new
    @comment = Comment.new
  end
end
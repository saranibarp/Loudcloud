class LikesController < ApplicationController
  before_action :lookup_song

  def new
    @like = @song.comments.new
  end

  def create
    @like = @song.comments.new(params[:song_id])

    respond_to do |format|
      format.js { }
      format.html { redirect_to root_url, notice: 'Success! You liked the song' }
    else
      format.js { }
      format.html { render 'new' }
    end
  end

  private 

  def lookup_song
    @song = Song.find(params[:song_id])
  end
end
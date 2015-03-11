class LikesController < ApplicationController
  before_action :lookup_song, :lookup_like

  def new
  end

  def create
    respond_to do |format|
      if @like.save
        format.js { }
        format.html { redirect_to root_url, notice: 'Success! You liked the song' }
      else
        format.js { }
        format.html { render 'new' }
      end
    end
  end

  private 

  def lookup_song
    @song = Song.find(params[:song_id])
  end

  def lookup_like
    @like = @song.likes.new
  end
end
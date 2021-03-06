class CommentsController < ApplicationController
  before_action :lookup_song, except: [:destroy]

  def new
    @comment = @song.comments.new
  end

  def create
    @comment = @song.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.js { }
        format.html { redirect_to root_url, notice: 'Success! We added your comment' }
      else
        format.js { }
        format.html { render 'new' }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.js { }
      format.html { redirect_to root_url, notice: 'Comment marked as spam' }
    end
  end

  private 

  def lookup_song
    @song = Song.find(params[:song_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
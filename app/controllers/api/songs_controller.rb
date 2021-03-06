class Api::SongsController < ApplicationController
  def create
    @song = Song.new(song_params)
    if @song.save
      render "/api/songs/show"
    else
      render json: @song.errors, status: 422
    end

  end

  def index
    if params[:query]
      @song_titles = Song.search_title_for(params[:query]).limit(5)
      @song_artists = Song.search_artist_for(params[:query]).limit(5)
    else
      @songs = Song.all
      render "/api/songs/index"
    end
  end

  def show
    @song = Song.find(params[:id])
    render "/api/songs/show"
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes(song_params)
      render "/api/songs/show"
    else
      render json @song.errors.full_messages, status: 422
    end
  end

  def destroy
    @song = Song.find(params[:id])

    if @song
      @song.destroy
      render "/api/songs/show"
    else
      render json: ["No such song"], status: 404
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :lyrics, :author_id, :artist, :image, :query)
  end
end

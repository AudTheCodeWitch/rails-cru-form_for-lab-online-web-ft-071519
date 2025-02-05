class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(user_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(user_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  private

  def user_params
    params.require(:artist).permit(:name, :bio)
  end
end

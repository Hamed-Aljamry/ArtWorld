class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
  end


  def artwork_params
    params.require(:artwork).permit(:category, :description, :title, :artist, :photo)
  end
end

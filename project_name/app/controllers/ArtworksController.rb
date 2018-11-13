class ArtworksController < ApplicationController
  
  def index
    render json: ArtworkShare.all 
    # render plain: "I'm in the index action!"
  end
  
  def create
    artwork = Artwork.new(user_params)
    # replace the `user_attributes_here` with the actual attribute keys
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end
  
  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end
  
  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      render json: artwork 
    else 
      render json: artwork.errors.full_messages, status: 418
    end
  end
  
  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork 
    
  end
  
  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
  
end
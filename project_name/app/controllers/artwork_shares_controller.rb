class ArtworkSharesController < ApplicationController
  
  def index
    render json: ArtworkShare.all 
  end
  
  def create
    shares = ArtworkShare.new(artwork_shares_params)
    # replace the `user_attributes_here` with the actual attribute keys
    if shares.save
      render json: shares
    else
      render json: shares.errors.full_messages, status: 422
    end
  end
  
  # def show
  #   artwork = ArtworkShare.find(params[:id])
  #   render json: artwork
  # end
  
  def destroy
    shares = ArtworkShare.find(params[:id])
    shares.destroy
    render json: shares 
    
  end
  
  private
  def artwork_shares_params
    params.require(:artwork_shares).permit(:viewer_id, :artist_id)
  end
  
end
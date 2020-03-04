class LikesController < ApplicationController

  def create
    # raise
    beer = Beer.find(params[:beer_id])
    @like = Like.new
    @like.user = current_user
    @like.beer = beer
    @like.save
    if params[:page] == "index"
      redirect_to beers_path
    else
      redirect_to beer_path(beer)
    end

  end

  def destroy
    @like = Like.find(params[:id])
    beer = @like.beer
    @like.destroy
    #if the params has index
    if params[:page] == "index"
      redirect_to beers_path
    else
      redirect_to beer_path(beer)
    end
  end

  private

  # def like_params
  #  params.require(:like).permit(:user_id, :beer_id)
  # end
end

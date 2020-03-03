class BeersController < ApplicationController

  def index

    if params[:search]
      # includes acces the info of beers tags in the where

      tag_ids = params[:search][:tags].reject { |id| id == ""}
      @beers = Beer.includes(:beer_tags).where(beer_tags: { tag_id: tag_ids })
    else
      @beers = Beer.all
    end

  end

  def show
    @beer = Beer.find(params[:id])
  end
end

class BeersController < ApplicationController

  def index
    # raise
    if params[:query]
      if params[:query].strip.empty?
        @beers = Beer.all
      else
        @beers = Beer.search_by_name(params[:query])
      end
    elsif params[:search]
      # includes acces the info of beers tags in the where
      tag_ids = params[:search][:tags].reject { |id| id == ""}
      @beers = Beer.includes(:beer_tags).where(beer_tags: { tag_id: tag_ids })
    else
      @beers = Beer.all
    end
    # @random_beers = Beer.all.sample(3)
  end

  def show
    @beer = Beer.find(params[:id])
    @choice = Choice.new
  end

  def random
    @beers = Beer.all.sample(2)
  end

end


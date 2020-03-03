class ChoicesController < ApplicationController

  def show
    @choice = Choice.find(params[:id])
    @pub = @choice.pub
    @pubs = Pub.geocoded # returns flats with coordinates

    @markers =
      [{
        lat: @pub.latitude,
        lng: @pub.longitude
      }]
  end

  def create
    @beer = Beer.find(params[:item_id])
    user = current_user
    # THE PUB ID WILL COME FROM THE BEER SHOW PAGE FORM
    @choice = Choice.new(choice_params)
    @choice.beer = @beer
    @choice.user = user
    if @choice.save
      redirect_to
    else
      render :new
    end

  end
end

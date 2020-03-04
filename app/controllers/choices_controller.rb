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

  def new
    @user = current_user

  end

  def create
    @beer = Beer.find(params[:beer_id])
    @user = current_user
    # @pubs = @beer.pubs
    @choice = Choice.new(choice_params)
    @choice.beer = @beer
    @choice.user = @user
    if @choice.save
      redirect_to choice_path(@choice)
    else
      raise
      render "beers/show"
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:user_id, :pub_id, :beer_id)
  end
end

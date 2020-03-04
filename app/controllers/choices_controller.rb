class ChoicesController < ApplicationController

  def show
    @choice = Choice.find(params[:id])

    @pub = @choice.pub
    @pubs = Pub.geocoded # returns flats with coordinates

    @markers =
      [{
        lat: @pub.latitude,
        lng: @pub.longitude,
        infoWindow: render_to_string(partial: "info_window_pub", locals: { pub: @pub }),
        image_url: helpers.asset_url('beer_icon.png')
      }, {
        lat: current_user.latitude,
        lng: current_user.longitude,
        infoWindow: render_to_string(partial: "info_window_user", locals: { user: current_user }),
        image_url: helpers.asset_url('avatar.jpg')
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

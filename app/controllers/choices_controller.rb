class ChoicesController < ApplicationController

  def show
    @choice = Choice.find(params[:id])

    @pub = @choice.pub
    @pubs = Pub.geocoded # returns flats with coordinates

    if current_user.avatar.attached?
      @markers =
        [{
          lat: @pub.latitude,
          lng: @pub.longitude,
          infoWindow: render_to_string(partial: "info_window_pub", locals: { pub: @pub }),
          image_url: helpers.asset_url('logo.svg')
        }, {
          lat: current_user.latitude,
          lng: current_user.longitude,
          infoWindow: render_to_string(partial: "info_window_user", locals: { user: current_user }),
          image_url: helpers.asset_url("https://res.cloudinary.com/dtoehsudt/image/upload/v1582804201/#{current_user.avatar.key}")
        }]
    else
        @markers =
        [{
          lat: @pub.latitude,
          lng: @pub.longitude,
          infoWindow: render_to_string(partial: "info_window_pub", locals: { pub: @pub }),
          image_url: helpers.asset_url('logo.svg')
        }, {
          lat: current_user.latitude,
          lng: current_user.longitude,
          infoWindow: render_to_string(partial: "info_window_user", locals: { user: current_user }),
          image_url: helpers.asset_url("avatar.png")
        }]
    end

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
      render "beers/show"
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:user_id, :pub_id, :beer_id)
  end
end

class AppearancesController < ApplicationController

  def new
    @episodes = Episode.all
    @guest = Guest.find(params[:guest_id])
    @appearance = Appearance.new()
  end

  def create
    appearance = Appearance.new(appearance_params)
    appearance.guest = Guest.find(params[:guest_id])
    if appearance.save
      redirect_to guest_path(params[:guest_id])
    else
      redirect_to guest_path(params[:guest_id])
    end
  end


  private

  def appearance_params
    params.require(:appearance).permit(:rating, :episode_id)
  end
end

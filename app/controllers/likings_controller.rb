class LikingsController < ApplicationController

	before_filter :authenticate_user!

  def create
    liking = current_user.likeds.build(
                    :liker_id => params[:like])
    if liking.save
      flash[:notice] = "Now liking."
      redirect_to puns_url
    else
      flash[:notice] = "Unable to like."
      redirect_to puns_url
    end
  end

  def destroy
    liking = current_user.likeds.find(params[:id])
    liking.destroy
    flash[:notice] = "Removed Follow."
    redirect_to puns_url
  end

end

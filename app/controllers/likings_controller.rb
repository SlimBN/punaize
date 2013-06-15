class LikingsController < ApplicationController

	before_filter :authenticate_user!

  def create
    like = current_user.likings.build(
                    :pun_id => params[:liked])
    if (like.save)
      flash[:notice] = "Now liking."
      redirect_to puns_url
    else
      flash[:notice] = "Unable to like."
      redirect_to puns_url
    end
  end

  def destroy
    liking = Liking.where("user_id = ?", current_user.id).find(params[:id])
    liking.destroy
    flash[:notice] = "Removed Follow."
    redirect_to puns_url
  end

end

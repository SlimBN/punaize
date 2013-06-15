class MainController < ApplicationController
	def index
		if (user_signed_in? and current_user.username.nil?)
			redirect_to edit_user_path(current_user)
		end

		if (user_signed_in? and current_user.username?)
			redirect_to puns_path()
		end
	end
end

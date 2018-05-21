class AuthersController < ApplicationController
	skip_before_action :verify_authenticity_token
	def auth
		sleep 5
		render json: { success: "well done" }
	end


end

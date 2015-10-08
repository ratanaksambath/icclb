class PagesController < ApplicationController
	
	def index
    if user_signed_in?
      redirect_to codes_path
    end

	end

end
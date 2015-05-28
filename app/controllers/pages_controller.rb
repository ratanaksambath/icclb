class PagesController < ApplicationController
	before_action :authenticate_user!
	def index
	end
	def track1
		@videos = Video.where(:server => "server1")
	end
	def track2
		@videos = Video.where(:server => "server2")
	end
end
class PagesController < ApplicationController
	def index
	end
	def track1
		@videos = Video.where(:server => "server1")
	end
end
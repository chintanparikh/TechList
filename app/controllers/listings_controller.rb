class ListingsController < ApplicationController
	def index
		section = Section.find(params[:section_id])
		redirect_to [section.category, section]			
	end

	def show
		@listing = Listing.find(params[:id])
	end
end

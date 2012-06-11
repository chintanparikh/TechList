class ListingsController < ApplicationController
	def index
		section = Section.find(params[:section_id])
		redirect_to [section.category, section]
	end
	def show
	end
end

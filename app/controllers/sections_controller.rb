class SectionsController < ApplicationController
	def index
		redirect_to Category.find(params[:category_id])
	end
	def show 
		@section = Section.find(params[:id])
	end
end

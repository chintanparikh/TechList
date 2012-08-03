class ListingsController < ApplicationController
  load_and_authorize_resource only: :new

  def index
    section = Section.find(params[:section_id])
    redirect_to [section.category, section]
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
  end
end

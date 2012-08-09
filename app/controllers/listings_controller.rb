class ListingsController < ApplicationController
  load_and_authorize_resource :category, only: :new
  load_and_authorize_resource :section, through: :category, only: :new
  load_and_authorize_resource :listing, through: :section, only: :new

  def index
    section = Section.find(params[:section_id])
    redirect_to [section.category, section]
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
  end

  def create
    @listing = @section.listing.create(params[:listing])
    respond_with @listing
  end
end

class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = []
    for entry in Entry.all
      if entry["place_id"] == @place["id"]
        @entries << entry
      end
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end
end

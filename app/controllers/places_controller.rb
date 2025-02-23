class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    # Find a Place by ID
    @place = Place.find_by({ "id" => params["id"] })
    @entries = []
    for entry in Entry.all
      if entry["place_id"] == @place["id"]
        @entries << entry
      end
    end
  end

  def new
    # Render view with new Place form
  end

  def create
    # Start with a new Place
    @place = Place.new

    # Assign user-entered form data to Place's columns
    @place["name"] = params["name"]

    # Save Place row
    @place.save

    # Redirect user to the list of places
    redirect_to "/places"
  end
end

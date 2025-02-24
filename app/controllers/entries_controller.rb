class EntriesController < ApplicationController
  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    @place = Place.find_by({ "id" => params["place_id"] })
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = @place["id"]
    if @entry.save
      redirect_to "/places/#{@place['id']}"
    else
      render :new # Re-render the form if validation fails
    end
  end
end


class PlacesController < ApplicationController
  def index
    places = Place.all
    if params[:name]
      name = params[:name]
      places = places.where("name iLIKE ?", "%#{name}%" )
    end
    render json: places
  end

  def create
    place = Place.new(
      name: params[:name], 
      address: params[:address], 
    )
    if place.save
      render json: place
    else
      render json:{errors: place.errors.full_message}, status: :unprocessable_entity
    end
  end

  def update
    place = Place.find(params[:id])
    place.name = params[:name] || place.name
    place.address = params[:address] || place.address
    if place.save
      render json: place
    else
      render json:{errors: place.errors.full_message}
    end
  end

  def show
     id = params[:id]
     id = id.to_i
    place = Place.find_by(id:id)
    render json: place
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    render json: {message: "The place had been succesfully destroyed"}
  end

end
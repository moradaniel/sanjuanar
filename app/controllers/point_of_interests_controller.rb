class PointOfInterestsController < ApplicationController
  def index
  end

  def show
    @pointOfInterest = PointOfInterest.find(params[:id])
  end

  def new
    @pointOfInterest = PointOfInterest.new
  end

  def create
    @pointOfInterest = PointOfInterest.new(params[:point_of_interest])
    @pointOfInterest.save
    flash[:notice] = 'Point of Interest has been created.'
    redirect_to @pointOfInterest
  end
end

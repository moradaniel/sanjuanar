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
    if @pointOfInterest.save
      flash[:notice] = 'Point of Interest has been created.'
      redirect_to @pointOfInterest
    else
      flash[:alert] = 'Point of Interest has not been created.'
      render :action=>"new"
    end

  end
end

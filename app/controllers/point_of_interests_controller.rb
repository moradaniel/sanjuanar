class PointOfInterestsController < ApplicationController
  def index
    @pointOfInterests = PointOfInterest.all
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

  def edit
    @pointOfInterest = PointOfInterest.find(params[:id])

  end

  def update
    @pointOfInterest = PointOfInterest.find(params[:id])
    if @pointOfInterest.update_attributes(params[:point_of_interest])
      flash[:notice] = 'Point of Interest has been updated.'
      redirect_to @pointOfInterest
    else
      flash[:alert] = 'Point of Interest has not been updated.'
      render :action=>"edit"
    end
  end
end

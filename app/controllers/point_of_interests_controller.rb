class PointOfInterestsController < ApplicationController

  #before_filters are run before all the actions in your controller
  before_filter :find_pointOfInterest, :only => [:show, :edit, :update, :destroy]


  def index
    @pointOfInterests = PointOfInterest.all
  end

  def show

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

  end

  def update
    if @pointOfInterest.update_attributes(params[:point_of_interest])
      flash[:notice] = 'Point of Interest has been updated.'
      redirect_to @pointOfInterest
    else
      flash[:alert] = 'Point of Interest has not been updated.'
      render :action=>"edit"
    end
  end

  def destroy
    if @pointOfInterest.destroy
      flash[:notice] = 'Point of Interest has been deleted.'
    else
      flash[:alert] = 'Point of Interest has not been deleted.'
    end
    redirect_to point_of_interests_path
  end

  #private methods MUST be declared at the end of the class
  private
  def find_pointOfInterest
    @pointOfInterest = PointOfInterest.find(params[:id])
      #A call to ActiveRecord#find raises an ActiveRecord::RecordNotFound exception when the record passed as parameter doesn’t exist
      #we need a rescue block to handle the exception
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The pointOfInterest you were looking for could not be found."
    redirect_to point_of_interests_path
  end
end

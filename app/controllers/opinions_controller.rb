class OpinionsController < ApplicationController

  before_filter :find_point_of_interest
  before_filter :find_opinion, :only=> [:show,
                                       :edit,
                                       :update,
                                       :destroy]

  def new
    @opinion = @pointOfInterest.opinions.build
  end

  def create
    @opinion = @pointOfInterest.opinions.build(params[:opinion])
    if @opinion.save
      flash[:notice] = 'Opinion has been created.'
      redirect_to [@pointOfInterest, @opinion]
    else
      flash[:alert] = 'Opinion has not been created.'
      render :action=>"new"
    end

  end

  def show

  end

  def edit

  end

  def update
    if @opinion.update_attributes(params[:opinion])
      flash[:notice] = 'Opinion has been updated.'
      redirect_to [@pointOfInterest, @opinion]
    else
      flash[:alert] = 'Opinion has not been updated.'
      render :action=>"edit"
    end

  end

  private
  def find_point_of_interest
    @pointOfInterest = PointOfInterest.find(params[:point_of_interest_id])
  end

  def find_opinion
    @opinion= @pointOfInterest.opinions.find(params[:id])
  end

end


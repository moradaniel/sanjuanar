require 'spec_helper'

describe PointOfInterestsController do

  #describe "GET 'index'" do
  #  it "returns http success" do
  #    get 'index'
  #    response.should be_success
  #  end
  #end

  it "displays an error for a missing pointOfInterest" do
    get :show, :id => "not-here"
    response.should redirect_to(point_of_interests_path)
    message= "The pointOfInterest you were looking for could not be found."
    flash[:alert].should eql(message)
  end

end

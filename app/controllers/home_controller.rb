class HomeController < ApplicationController
  respond_to :js, :only => :poll
  def index
    @city = request.location.city
    @country = request.location.country_code
    @latitude = request.location.latitude
    @longitude = request.location.longitude
  end
  def poll
  end
end

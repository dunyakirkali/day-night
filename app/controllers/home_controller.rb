class HomeController < ApplicationController
  respond_to :js, :only => :poll
  def index
    @city = request.location.city
    @country = request.location.country_code
    @latitude = request.location.latitude
    @longitude = request.location.longitude

    sss = SunRiseSet.now(@latitude, @longitude).to_s
  end
  def poll
  end
end

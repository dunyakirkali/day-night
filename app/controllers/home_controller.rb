class HomeController < ApplicationController
  def index
    @title = 'Day & Night'
    @location = request.location
    @sss = SunRiseSet.now(@location.latitude, @location.longitude)
    @local_time = Time.now

    # TODO move logic to model
    if @local_time < @sss.sunrise || @local_time > @sss.sunset
      fade = 0
    else
      if @local_time < @sss.solNoon
        fade = (@local_time.to_i - @sss.sunrise.to_i) / (@sss.solNoon.to_i - @sss.sunrise.to_i).to_f * 0.8
      else
        fade = (1.0 - ((@local_time.to_i - @sss.solNoon.to_i) / (@sss.sunset.to_i - @sss.solNoon.to_i).to_f)) * 0.8
      end
    end

    @base_color = ColorMath::HSL.new(212, 0.5, fade).hex

    respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
  end
end

class HomeController < ApplicationController
  respond_to :js, :only => :poll
  def index
  end
  def poll
  end
end

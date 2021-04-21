class HubController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def site_appraisal_tool
  end

  def my_listings
    @listings = Listing.all
  end
end

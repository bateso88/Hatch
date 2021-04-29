# frozen_string_literal: true

class HubController < ApplicationController
  before_action :authenticate_user!
  def index; end

  def get_started; end

  def my_listings
    @listings = Listing.all
  end

  def growth_intelligence; end

  def marketing_suite; end

  def leasing_guide; end

  def community; end
end

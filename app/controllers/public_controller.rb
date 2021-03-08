class PublicController < ApplicationController

  def index
    if Rails.env.production?
      @country = request.location.country
      @country = request.location.city
      @currency = request.currency
    end
  end
  
end

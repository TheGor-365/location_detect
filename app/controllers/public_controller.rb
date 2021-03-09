class PublicController < ApplicationController

  def index
    if Rails.env.production?
      @country = request.location.country_code
      @country = request.location.city

      @currency = @country.upcase == 'AU' ? 'AU$' : '$'
    end
  end

end

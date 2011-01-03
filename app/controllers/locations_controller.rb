class LocationsController < ApplicationController
  skip_before_filter :authenticate
  layout "jr"

  def index

    @store = Store.first

  end

end


class LocationsController < ApplicationController

  layout "jr"

  def index

    @store = Store.first

  end

end


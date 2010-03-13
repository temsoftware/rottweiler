class LocationsController < ApplicationController

  layout "jr"

  def index

    @store = Store.first

    @map = GMap.new("map_div_id")
    @map.control_init(:large_map => true, :map_type => true)
    @map.center_zoom_init([-23.526789,-46.607373], 16)

    marker = GMarker.new([-23.526789,-46.607373],
      :title => "#{@store.name}", :info_window => "#{@store.name}: <br> Rua #{@store.street}, #{@store.number} - #{@store.neighborhood} <br> #{@store.city} - #{@store.state}")
    @map.overlay_init(marker)

  end

end


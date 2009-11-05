class AffiliatesController < ApplicationController
  
  layout 'admin'
  active_scaffold :affiliate do |item|
    item.label = "Seguradoras"
    item.columns = [:name, :website, :data]
    item.create.columns = [:name, :website, :data]
  end
  
end

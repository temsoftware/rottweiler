class PartnersController < ApplicationController

  layout 'admin'
  active_scaffold :partner do |item|
    item.label = "Parceiros"
    item.columns = [:name, :website, :data]
    item.create.multipart = true
    item.create.columns = [:name, :website, :data]
  end
end


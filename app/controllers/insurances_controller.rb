class InsurancesController < ApplicationController

  layout 'admin'

   active_scaffold :insurance do |item|

   item.label          = "Seguros"
   item.create.label   = "Nome do Tipo de Seguro"

   item.columns = [:name]


   item.columns[:name].label = "Nome"

 end

end


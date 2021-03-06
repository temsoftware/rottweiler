class HomeInfosController < ApplicationController
  
  layout 'admin'
  
   active_scaffold :home_info do |item|
     item.label = "Painel de Controle - Home"
     item.columns = [:name, :text]
     item.columns[:name].label = "Nome"
     item.columns[:text].label = "Descrição"
     item.create.columns = [:name, :text]
     item.update.columns = [:name, :text]
   end
  
end

class InsuranceBusinessAdminController < ApplicationController

 layout 'admin'

 active_scaffold :insurance_business do |item|

   item.label          = "Produto"
   item.create.label   = "Criando Novo Produto"

   item.columns = [:name, :insurance, :description]

    item.columns[:name].label         = "Nome"
    item.columns[:img_titulo].label   = "URL Imagem de Titulo"
    item.columns[:span_name_id].label = "Nome id do Span Html"
    item.columns[:description].label  = "Descrição"
    item.columns[:insurance].label    = "Tipo de Seguro"
    item.columns[:insurance].ui_type  = :select

    item.create.columns = [:name, :img_titulo, :span_name_id, :insurance, :description]
    item.show.columns   = [:name, :img_titulo, :span_name_id, :insurance, :description]
    item.update.columns = [:name, :img_titulo, :span_name_id, :insurance, :description]

    #item.actions.exclude :show
    item.actions.exclude :create
    #item.actions.exclude :search
    #item.actions.exclude :delete

 end

end


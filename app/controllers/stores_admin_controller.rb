class StoresAdminController < ApplicationController

    layout "admin"

   active_scaffold :store do |item|
    item.label = "Lojas"
    item.columns = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone, :fax]
    item.columns[:name].label           = "Nome"
    item.columns[:street].label         = "Rua"
    item.columns[:number].label         = "Número"
    item.columns[:neighborhood].label   = "Bairro"
    item.columns[:cep].label            = "CEP"
    item.columns[:city].label           = "Cidade"
    item.columns[:state].label          = "Estado"
    item.columns[:telephone].label      = "Telefone"
    item.columns[:fax].label            = "Fax"
    #item.columns[:data].label           = "Mapa"
    #item.columns[:image].label = "Imagem"


    item.create.columns = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone, :fax]
    item.show.columns   = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone, :fax]
    item.update.columns = [:name, :street, :number, :neighborhood, :cep, :city, :state, :telephone, :fax]

    item.actions.exclude :show
    item.actions.exclude :create
    item.actions.exclude :search
    item.actions.exclude :delete
  end

end


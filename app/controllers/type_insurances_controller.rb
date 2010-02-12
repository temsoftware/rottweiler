class TypeInsurancesController < ApplicationController

  layout 'admin'

  active_scaffold :type_insurance do |item|

    item.label          = "Tipos de Seguros"
    item.create.label   = "Tipo de Seguro"

    item.columns = [:name, :description]

    item.columns[:name].label        = "Nome"
    item.columns[:url_img].label     = "Endereço Imagem"
    item.columns[:description].label = "Descrição"
    #item.create.multipart = true
    #item.create.columns = [:name, :website, :data]

    item.create.columns = [:name, :url_img, :description]
    item.update.columns = [:name, :url_img, :description]

  end

end


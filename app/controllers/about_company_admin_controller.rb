class AboutCompanyAdminController < ApplicationController

  layout 'admin'

  active_scaffold :aboutjr do |item|

    item.label          = "Quem Somos"
    item.create.label   = "Dados da JR"

    item.columns = [:description]

    item.columns[:description].label  = "Descrição"

    item.actions.exclude :create
    item.actions.exclude :search
    item.actions.exclude :delete
  end
end


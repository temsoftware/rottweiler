class HomeController < ApplicationController

  layout "jr"

  def index
    @type_insurance = TypeInsurance.all
  end


end


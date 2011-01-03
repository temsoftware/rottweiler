class HomeController < ApplicationController
  skip_before_filter :authenticate
  layout "jr"

  def index
    @type_insurance = TypeInsurance.all
  end


end


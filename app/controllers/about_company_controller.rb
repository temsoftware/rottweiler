class AboutCompanyController < ApplicationController
  skip_before_filter :authenticate
  layout "jr"

  def index

    @about_company = Aboutjr.first

  end

end


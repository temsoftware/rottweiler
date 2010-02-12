class AboutCompanyController < ApplicationController

  layout "jr"

  def index

    @about_company = Aboutjr.first

  end

end


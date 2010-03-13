class InsuranceCompanyListController < ApplicationController

  layout "jr"

  def index
    @companies = Affiliate.all
  end

end


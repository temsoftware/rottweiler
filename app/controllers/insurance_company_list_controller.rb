class InsuranceCompanyListController < ApplicationController
  skip_before_filter :authenticate
  layout "jr"

  def index
    @companies = Affiliate.all
  end

end


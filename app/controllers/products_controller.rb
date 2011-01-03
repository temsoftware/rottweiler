class ProductsController < ApplicationController
  skip_before_filter :authenticate
  layout "jr"

  ImageSeguroPessoais     = "../images/seguros_pess_titulo_esq.jpg"
  ImageSeguroEmpresariais = "../images/seguros_emp_titulo.jpg"

  def index

    if params[:type] == "Pessoais"
      @insurance_business = InsuranceBusiness.find_insurance_by_type("Pessoais")
      @insurance_show     = InsuranceBusiness.find_principal_insurance("Pessoais Principal").first
      @img_titulo_esq     = ImageSeguroPessoais
    else
      @insurance_business = InsuranceBusiness.find_insurance_by_type("Empresariais")
      @insurance_show     = InsuranceBusiness.find_principal_insurance("Empresariais Principal").first
      @img_titulo_esq     = ImageSeguroEmpresariais
    end

  end

  def show

    @insurance_show     = InsuranceBusiness.find (params[:id])
    @insurance_business = InsuranceBusiness.find_insurance_by_type(@insurance_show.insurance.name)

     if @insurance_show.insurance.name == "Pessoais"
       @img_titulo_esq     = ImageSeguroPessoais
     else
       @img_titulo_esq     = ImageSeguroEmpresariais
     end

  end

end


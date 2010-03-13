class ContactsController < ApplicationController

include FaceboxRender

  layout "jr"

  def index

    @store = Store.first

  end

  def create

    @contacts = Contact.new
    @contacts.name     = params[:nome_txt]
    @contacts.email    = params[:email_txt]
    @contacts.tel      = params[:telefone_txt]
    @contacts.news     = params[:news] || 0
    @msg               = params[:msg_tx]

    #@contact  = Contact.find_by_email(@contacts.email)

    if @contacts.valid?

      @contacts.save!

      ContactNotifier.deliver_contact_notification(@contacts,@msg)

      flash[:notice] = "E-mail Enviado com Sucesso!."
      flash[:status] = "success"
    else
      flash[:notice] = "E-mail nao será enviado! Por favor verifique os seguintes campos:"
      flash[:status] = "error"
    end

    #ContactNotifier.deliver_contact_notification(@nome,@email,@telefone,@msg)

    #redirect_to :controller => "contacts", :action => "show"

    respond_to do |format|
     format.html
     format.js { render_to_facebox :partial => "show"}
    end
  end

  def show

    respond_to do |format|
     format.html
     format.js { render_to_facebox }
    end

  end

end


class ContactsController < ApplicationController

  layout "jr"

  def index

    @store = Store.first

  end

  def create

    @nome     = params[:nome_txt]
    @email    = params[:email_txt]
    @telefone = params[:telefone_txt]
    @msg      = params[:msg_tx]
    @news     = params[:news] || 0

    @contact  = Contact.find_by_email(@email)

    if @contact == nil
      @contact = Contact.new
    end

    @contact.name  = @nome
    @contact.email = @email
    @contact.tel   = @telefone
    @contact.news  = @news

    @contact.save

    ContactNotifier.deliver_contact_notification(@nome,@email,@telefone,@msg)

    redirect_to :controller => "home", :action => "index"
  end

end


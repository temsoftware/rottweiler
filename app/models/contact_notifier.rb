class ContactNotifier < ActionMailer::Base

  def contact_notification(contact,msg)
    @recipients = "JR Seguros <contato@jrcorretora.com.br>"
    #@from = "#{contact.name} <#{contact.email}>"
    #@from = "#{nome} <#{email}>"
    @subject = "[JR Web Site] - Contato do Usuario"
    @body = {:msg => msg,:nome => contact.name, :email => contact.email, :telefone => contact.tel}
  end


end


class ContactNotifier < ActionMailer::Base


  def contact_notification(nome,email,telefone,msg)
    @recipients = "#{nome} <#{email}>"
    #@from = "eduzera@gmail.com"
    #@from = "#{nome} <#{email}>"
    @subject = "[JR Web Site] - Contato do Usuario"
    @body = {:msg => msg,:nome => nome, :email => email, :telefone => telefone}
  end


end


class Contact < ActiveRecord::Base
  validates_presence_of :name, :email,  :message => "Campo Obrigatorio"
  validates_format_of   :email, :with => /^[\'_]*([a-zA-Z0-9\-]+(\.|\_*)?)+@([a-zA-Z][a-zA-Z0-9\-]+(\.|\-*\.))+[a-zA-Z]{2,6}$/ , :message => "Email Invalido"
end


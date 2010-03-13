class Partner < ActiveRecord::Base

  has_attached_file :data, :styles => {:original => " 69x30>"},
  :url => "/uploads/partners/:id/:id_:styles.:extension",
  :path => ":rails_root/public/uploads/partners/:id/:id_:styles.:extension"

  def to_label
    data.url :original
  end
end


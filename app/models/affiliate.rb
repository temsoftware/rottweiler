class Affiliate < ActiveRecord::Base
  has_attached_file :data, :styles => {:original => "50x50>"},
  :url => "uploads/affiliates/:id:/:id_:styles.:extension",
  :path => ":rails_root/public/uploads/affiliates/:id:/:id_:styles.:extension"
  
  def to_label
    data.url :original
  end
end

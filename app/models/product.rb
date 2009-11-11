class Product < ActiveRecord::Base
  def to_label
   :name
  end
end

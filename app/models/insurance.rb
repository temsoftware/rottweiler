class Insurance < ActiveRecord::Base

  def to_label
     "#{name}"
  end

end


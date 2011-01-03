class User < ActiveRecord::Base
  belongs_to :profile

  validates_presence_of :name
  validates_presence_of :login
  validates_presence_of :pass

  validates_uniqueness_of :login, :case_sensitive => :false

end

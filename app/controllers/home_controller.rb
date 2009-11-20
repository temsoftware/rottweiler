class HomeController < ApplicationController
  layout 'jr'
  
  def index
   @home_info = HomeInfo.find(:all)
   puts "-----------------"
   puts @home_info.length
  end
end

class HomeController < ApplicationController
  
  
  def top
    @q = Property.ransack(params[:q])
    @properties = @q.result(distinct: true)
  end

  def about
  end
  
  

end

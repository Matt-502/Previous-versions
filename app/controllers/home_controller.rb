class HomeController < ApplicationController
  def top
    @properties = Property.all
  end

  def about
  end
end

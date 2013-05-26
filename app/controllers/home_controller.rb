class HomeController < ApplicationController

  def index
    @owner = Owner.new
  end

end
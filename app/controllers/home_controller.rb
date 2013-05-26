class HomeController < ApplicationController

  def index
    @owner = Owner.new
    flash[:notice] = 'Welcome!'
    flash[:alert] = 'My birthday is soon.'
  end

end
flash.each do |key, value|
  puts '<div class="' + key + '">' + value + '</div>'
end
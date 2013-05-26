class ContactsController < ApplicationController

  def process_form
    Rails.logger.debug 'DEBUG: params are' + params.inspect
    message = "Received request from #{params[:contact][:name]}"
    redirect_to root_path, :notice => message
  end

end
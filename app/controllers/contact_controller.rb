class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      # TODO send message here
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
end
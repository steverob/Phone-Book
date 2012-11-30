class PhonesController < ApplicationController
  respond_to :json

  def index
    @contact = Contact.find(params[:contact_id])
    respond_with @contact.phones.all
  end

  def show
    @contact = Contact.find(params[:contact_id])
    respond_with @contact.phones.find(params[:id])
  end

  def create
    @contact = Contact.find(params[:contact_id])
    respond_with @contact.phones.bulild(params[:phone])
  end

  def update
    @contact = Contact.find(params[:contact_id])
    respond_with @contact.phones.update(params[:id], params[:phone])
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    repsond_with @contact.phone.destroy(params[:id])
  end
end
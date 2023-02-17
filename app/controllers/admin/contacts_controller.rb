class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @contacts_count = Contact.all.count
    @contacts = Contact.page(params[:page]).per(15)
  end

  def show
     @contact = Contact.find(params[:id])
  end
end
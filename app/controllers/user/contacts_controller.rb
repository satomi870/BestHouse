class User::ContactsController < ApplicationController
  def new
    @property=Property.find(params[:property_id])
    @contact = Contact.new
    #@property=Property.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    @contact.property_id = params[:property_id]
    @contact.save
    redirect_to root_path

  end

  private

    # Only allow a list of trusted parameters through.
  def contact_params
      params.require(:contact).permit(:name, :name_kana, :gender, :age, :nationality, :email, :telephone_number, :address, :occupation, :schedule, :hope, :contact )
  end
end

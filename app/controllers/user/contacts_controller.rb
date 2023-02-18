class User::ContactsController < ApplicationController
  before_action :authenticate_user!

  def new
    @property=Property.find(params[:property_id])
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    @contact.property_id = params[:property_id]
    if  @contact.save
      #
      @notification = Notification.new
      @notification.action = "contact"
      @notification.sender_id = @contact.user_id
      @notification.receiver_id = @contact.user_id
      @notification.checked = false
      @notification.property_id = @contact.property_id
      @notification.save
      #
      flash[:notice] = "お問い合わせの送信が完了しました!"
      redirect_to root_path
    else
      @property=Property.find(params[:property_id])
       render :new
    end
  end

  def show
    @property=Property.find(params[:property_id]) #serach画面の物件選ぶみたいに選んでないんだからidは取れない
    @contact = @property.Contact.find(params[:id])
  end

  private

  def contact_params
      params.require(:contact).permit(:name, :name_kana, :gender, :age, :nationality, :email, :telephone_number, :address, :occupation, :schedule, :hope, :contact)
  end
end

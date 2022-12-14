# frozen_string_literal: true
class User::SessionsController < Devise::SessionsController
  before_action:user_deleted,only:[:create]

  def user_deleted
    @user=User.find_by(email: params[:user][:email])
    return if !@user
      if @user.valid_password?(params[:user][:password]) && (@user.is_deleted == true)
        redirect_to new_user_registration_path
      end
  end

  # def after_sign_in_path_for(resource)
  #   stored_location_for(resource)
  #   # root_path
  # end


  def after_sign_in_path_for(resource)
    root_path
  end
  # end
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute
end

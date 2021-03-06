class UserAccounts::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  
  def destroy
      @user_account = UserAccount.find(current_user_account.id)
      if @user_account.destroy_with_password(params[:user_account][:delete_account_password])
        flash[:notice] = "User Account Successfully Deleted"
        redirect_to root_path
      else
         flash[:warning] = "Please Enter Correct Account Password to Delete Account"
         redirect_to edit_user_account_registration_path(current_user_account.id)
      end
  end


  def configure_sign_up_params
    attrs = [:name,:childname,:childgrade, :homeaddress]
    devise_parameter_sanitizer.permit(:sign_up, keys: attrs)
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    attrs = [:name,:childname,:childgrade, :homeaddress]
    devise_parameter_sanitizer.permit(:account_update, keys: attrs)
  end

end

class RegistrationsController < Devise::RegistrationsController
    private

    def sign_up_params
        params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
    end

    def account_update_params
        params.require(:user).permit(:username, :name, :email, :current_password, :new_password, :new_password_confirmation)
    end

end
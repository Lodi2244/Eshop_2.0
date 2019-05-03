# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    # before_action :configure_account_update_params, only: [:update]

    def new
      super
    end

    def create
      super
      current_or_guest_user
    end

    def edit
      super
    end

    def update
      super
    end

    def destroy
      super
    end

    private

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email password password_confirmation])
    end
  end
end
# If you have extra params to permit, append them to the sanitizer.
# def configure_account_update_params
#   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
# end

# The path used after sign up.
# def after_sign_up_path_for(resource)
#   super(resource)
# end

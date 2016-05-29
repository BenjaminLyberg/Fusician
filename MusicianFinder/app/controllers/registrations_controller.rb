class RegistrationsController < Devise::RegistrationsController
    
    def create
    super
    if @user.persisted?
        UserMailer.welcome_email(@user).deliver
    end
  end
    
    protected
    
    def after_sign_up_path_for(resource)
        edit_user_registration_path
    end
    
      def after_update_path_for(resource)
        users_profile_path
    end
    
    

    
end
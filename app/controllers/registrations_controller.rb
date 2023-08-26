class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :gender, :dob, :avatar)
    end
  
    def create
        @user = Useer.new(sign_up_params)
        if @user.save
          sign_in(@user) 
          redirect_to @user
        else
            render 'new'
          
        end
    end
    private

    def user_params
      params.require(:user).permit(:name, :gender, :dob, :other_attributes)
    end
end
  
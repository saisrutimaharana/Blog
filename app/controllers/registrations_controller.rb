class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :gender, :dob, :avatar)
    end
  
    def create
        @blog_post = BlogPost.new(sign_up_params)
        if @blog_post.save
          sign_in(@blog_post) 
          redirect_to @blog_post
        else
            render 'new'
          
        end
    end
end
  
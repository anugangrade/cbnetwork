class RegistrationsController < Devise::RegistrationsController
	
  def create 
    @user = User.new(user_params)
   	if @user.save
   		sign_in(:user, @user)
   		flash[:notice]="Signed in successfully."
    	redirect_to root_url 
    else
    	super
    end	
  end

  def update
    super
    if @user.errors.messages.blank?
      flash[:notice]="Password Change Successfully"
    end
  end

  def update_profile
    @user=current_user.update_attributes(update_user_params)
    if @user
      flash[:notice]="Successfully updated profile."
      redirect_to root_url 
    else
      super
    end 
  end
 


  private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :name, :encrypted_password, :address, :city, :state, :country, :zip, :twitter_link, :facebook_link, :linkedin_link)
    end

    def update_user_params
      params.require(:user).permit(:username, :email, :name, :address, :city, :state, :country, :zip, :twitter_link, :facebook_link, :linkedin_link)
    end
  
end

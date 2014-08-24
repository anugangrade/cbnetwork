class RegistrationsController < Devise::RegistrationsController
  def create
  resource = User.new(user_params)
  @path=root_url
    if resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)
        flash[:notice]="Sign up successfully."
        @errors=resource.errors.messages if !resource.nil?
        respond_to do |format|
          format.js
        end
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        @errors=resource.errors.messages if !resource.nil?
        respond_to do |format|
          format.js
        end
      end
    else
      clean_up_passwords resource
      @errors=resource.errors.messages if !resource.nil?
      respond_to do |format|
        format.js
      end
    end
  end
 
 
  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
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

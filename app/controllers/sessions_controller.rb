class SessionsController < Devise::SessionsController
  def create
    @approve=User.is_approve?(params[:user])
    if @approve
      resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
      sign_in_and_redirect(resource_name, resource)
  	  flash[:notice]="Sign in successfully."
    end  
  	respond_to do |format|
  		format.json
  		format.js
  	end
  end
 
  def sign_in_and_redirect(resource_or_scope, resource=nil)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    resource ||= resource_or_scope
    sign_in(scope, resource) unless warden.user(scope) == resource
    @root=root_url
    return 
  end
 
  def failure
    return 
  end
end

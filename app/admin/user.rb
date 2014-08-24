ActiveAdmin.register User do
  sidebar :actions do
    if !params[:id].nil?
      user=User.find(params[:id])
      if !user.approve
        button_to "Approve User", "/admin/users/#{params[:id]}/approve_user", :method => :get, :confirm => "Are you sure?"
      else
        link_to "Already Approved","#-",:disabled=>true,:class=>"action input_action"
      end
    end
  end

  controller do
      def approve_user
        user=User.find(params[:id])
        user.approve=true
        user.save  
        # send approved mail
        UserMailer.approve_user_profile(user).deliver
        flash[:notice]="User Approved successfully."
        redirect_to admin_users_path
      end
  end
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end

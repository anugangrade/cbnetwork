class AdvertisesController < InheritedResources::Base
	before_filter :authenticate_user!
	def new
		@zone = Zone.all
		@branch = Branch.all
		@catagory = Cateogry.all
		super
	end
	def create
		advertise=Advertise.new(advertise_params)
		if advertise.save
			flash[:notice]="Advertise created Successfully."
			redirect_to advertises_path
		else
			@zone = Zone.all
			@branch = Branch.all
			@catagory = Cateogry.all
			flash[:notice]="Error while creating Advertise."
			redirect_to new_advertise_path
		end
	end
	def edit
		@zone = Zone.all
		@branch = Branch.all
		@catagory = Cateogry.all
		super
	end
	
	def update
		advertise=Advertise.find(params[:id])
		if advertise.update_attributes(advertise_params)
			flash[:notice]="Advertise updated Successfully."
			redirect_to advertises_path
		else
			@zone = Zone.all
			@branch = Branch.all
			@catagory = Cateogry.all
			flash[:notice]="Error while updating Advertise."
			redirect_to new_advertise_path
		end
	end


	private
	  def advertise_params
    params.require(:advertise).permit(:start_date, :end_date, :title, :description, :branch_id,:web_link,:zone_id,:cateogry_id,:subcateogry_id)
  end
end

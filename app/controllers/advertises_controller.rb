class AdvertisesController < InheritedResources::Base
	before_filter :authenticate_user!
	def new
		@zone = Zone.all
		@branch = Branch.all
		@catagory = Cateogry.all
		super
	end
	def create
		debugger
	end
end

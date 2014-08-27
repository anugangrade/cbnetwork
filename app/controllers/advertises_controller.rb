class AdvertisesController < InheritedResources::Base
	
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

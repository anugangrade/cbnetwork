class AdvertisesController < InheritedResources::Base
	
	def new
		@zone = Zone.all
		@branch = Branch.all
		super
	end
	def create
		debugger
	end
end

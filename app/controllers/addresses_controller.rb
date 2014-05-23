class AddressesController < ApplicationController
	before_filter :load_addressable
	before_action :require_signin
	before_action :require_admin

	def index
		@addresses = @addressable.addresses
	end

	def new
		@address = @addressable.addresses.new
	end

	def create
		@address = @addressable.address.new(params[:address])
		if @address.save
			redirect_to @addressable, notice: "Thanks, that Address was created."
		else
			render :new
		end
	end
	
private

	def load_addressable
		# @addressable = Establishment.find(params[:establishment_id])
		# resource, slug = request.path.split('/')[1, 2] #/establishments/1
		# @addressable = resource.singularize.classify.constantize.find_by("slug") #Establishment.find(1)
	end

	def load_addressable
		klass = [Establishment, Distributor].detect { |c| params["#{c.name.underscore}_id"]}
		@addressable = klass.find_by(params["slug"])
	end
end

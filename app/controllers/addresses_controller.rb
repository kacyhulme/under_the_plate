class AddressesController < ApplicationController
	before_filter :load_addressable

	def index
		@addresses = @addressable.addresses
	end

	def new
		@address = @addressable.addresses.new
	end

	def create
		@address = @addressable.address.new(params[:address])
		if @address.save
			redirect_to [@commentable, :comments], notice: "Thanks, that Address was created."
		else
			render :new
		end
	end
	
private
	def load_addressable
		resource, id = request.path.split('/')[1, 2] #/establishments/1
		@addressable = resource.singularize.classify.constantize.find(id) #Establishment.find(1)
	end
end

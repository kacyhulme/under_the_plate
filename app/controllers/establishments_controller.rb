class EstablishmentsController < ApplicationController
	def index
		@establishments = Establishment.all
	end
	def show
		@establishment = Establishment.find(params[:id])
	end
end

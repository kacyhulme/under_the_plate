class DistributorsController < ApplicationController
	def index
		@distributors = Distributor.all
	end

	def show
		@distributor = Distributor.find(params[:id])
	end

	def new
		@distributor = Distributor.new
	end
end

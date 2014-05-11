class DistributorsController < ApplicationController
	before_action :require_signin, except: [:index, :show]
	before_action :require_admin, except: [:index, :show]

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

class DistributorsController < ApplicationController
	before_action :require_signin, except: [:index, :show]
	before_action :require_admin, except: [:index, :show]

	def index
		@distributors = Distributor.all
	end

	def show
		@distributor = Distributor.find(params[:id])
		@food_groups = @distributor.food_groups
	end

	def new
		@distributor = Distributor.new
	end

	def edit
		@distributor = Distributor.find(params[:id])
	end

	def create
		@distributor = Distributor.new(distributor_params)
		if @distributor.save
			redirect_to @distributor, notice: "Distributor was successfully added!"
		else
			render :new
		end
	end

private
	def distributor_params
    params.require(:distributor).permit(:name, :address_id, :owner_id, :food_group_id, :name)
  end
end
class EstablishmentsController < ApplicationController
	before_action :require_signin, except: [:index, :show]
	before_action :require_admin, except: [:index, :show]
	before_action :set_establishment, only: [:show, :edit, :update, :destroy]

	def index
		@establishments = Establishment.all.limit(25)
	end

	def show
		@cuisines = @establishment.cuisines
	end

	def new
		@establishment = Establishment.new
	end

	def create
		@establishment = Establishment.new(establishment_params)
		if @establishment.save
			redirect_to @establishment, notice: "Establishment was successfully added!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @establishment.update(establishment_params)
			redirect_to @establishment, notice: "Your updates have been saved"
		else
			render :edit
		end
	end

	def destroy
		@establishment.destroy
		redirect_to establishments_url, alert: "Establishment was successfully deleted."
	end

private
	def set_establishment
		@establishment = Establishment.find_by!(slug: params[:id])
	end

	def establishment_params
    params.require(:establishment).permit(:name, :address_id, :owner_id, :distributor_id, :cuisine)
  end
end
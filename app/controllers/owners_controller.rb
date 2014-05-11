class OwnersController < ApplicationController
	before_action :require_signin
	before_action :require_admin

	def index
		@owners = Owner.all
	end

	def show
		@owner = Owner.find(params[:id])
	end

	def new
	end
end

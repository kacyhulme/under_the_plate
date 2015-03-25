class DistributorsController < ApplicationController
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show, :new, :create]
  before_action :set_distributor, only: [:show, :edit, :update, :destroy]

  def index
    @distributors = Distributor.all
  end

  def show
    @food_groups = @distributor.food_groups
  end

  def new
    @distributor = Distributor.new
  end

  def create
    @distributor = Distributor.new(distributor_params)
    if @distributor.save
      redirect_to @distributor, notice: "Thanks! Distributor was successfully added! An administrator will fill in the rest."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @distributor.update(distributor_params)
      redirect_to @distributor, notice: "Your updates have been saved"
    else
      render :edit
    end
  end

  def destroy
    @distributor.destroy
    redirect_to distributors_url, alert: "Distributor was successfully deleted."
  end

  private
  def set_distributor
    @distributor = Distributor.friendly.find(params[:id])
  end

  def distributor_params
    params.require(:distributor).permit(:name, :food_group_id, :name)
  end
end

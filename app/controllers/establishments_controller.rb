class EstablishmentsController < ApplicationController
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]
  # before_action :set_establishment, only: [:show, :edit, :update, :destroy]

  def index
    flash[:alert] = "Click on an establishment below to see what ingredients they use, what certifications they have and any special practices they follow that make their food and their service exceptional!"
    if params[:search]
      @establishments = Establishment.search(params[:search].downcase).order("created_at ASC")
    else
      @establishments = Establishment.all.limit(25)
    end
    # render json: @establishments
  end

  def show
    @establishment = Establishment.find(params[:id])
    @addressable = @establishment
    @addresses = @addressable.addresses
    @address = Address.new
    @cuisines = @establishment.cuisines
    @distributors = @establishment.distributors
    @qualifications = @establishment.qualifications
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
    @establishment = Establishment.find(params[:id])
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
    @establishment = Establishment.friendly.find(params[:id])
  end

  def establishment_params
    params.require(:establishment).permit(:name, :owner, :distributor_id, :cuisine)
  end
end

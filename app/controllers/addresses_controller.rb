class AddressesController < ApplicationController
  before_action :load_addressable
  before_action :require_signin
  before_action :require_admin, except: [:index, :show, :new, :create]

  def index
    @addresses = @addressable.addresses
  end

  def show
    @address = @addressable.addresses.find(params[:id])
  end

  def new
    @address = @addressable.addresses.new
  end

  def create
    @address = @addressable.addresses.new(address_params)
    if @address.save
      redirect_to @addressable, notice: "Thanks, that address was created."
    else
      render :new
    end
  end

  private

  def load_addressable
    klass = [Establishment, Distributor].detect { |c| params["#{c.name.underscore}_id"] }
    @addressable = klass.friendly.find(params["#{klass.name.underscore}_id"])
  end

  def address_params
    #params[:address]
    params.require(:address).permit(:street_number, :street_name, :city, :state, :zip, :phone, :website)
  end
end

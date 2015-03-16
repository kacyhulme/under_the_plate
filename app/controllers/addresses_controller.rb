class AddressesController < ApplicationController
  before_filter :load_addressable
  before_action :require_signin
  before_action :require_admin

  def index
    @addresses = @addressable.addresses
  end

  def show

  end

  def new
    @address = @addressable.addresses.new
  end

  def create
    @address = @addressable.addresses.new(params[:address_params])
    if @address.save
      redirect_to @addressable, notice: "Thanks, that address was created."
    else
      render :new
    end
  end

  private

  def load_addressable
    klass = [Establishment, Distributor].detect { |c| params["#{c.name.underscore}_id"]}
    @addressable = klass.find_by(params["slug"])
  end

  def address_params
    params.require(:address).permit(:street_number, :street_name, :city, :state, :zip, :phone, :website)
  end
end

class DistributionsController < ApplicationController
  def index

  end

  def show
    @distributor = Distributor.find(params[:id])
    @addressable = @distributor
    @addresses = @addressable.addresses
    @address = Address.new
  end

end

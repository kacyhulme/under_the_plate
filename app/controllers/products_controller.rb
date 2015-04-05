class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    flash.now[:notice] = "Full selling and purchasing power COMING SOON!"
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to @product, notice: "Thanks! Your product was successfully added! Full selling and purchasing power COMING SOON!"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Your updates have been saved"
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, alert: "Product was successfully deleted."
  end

  private
  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end

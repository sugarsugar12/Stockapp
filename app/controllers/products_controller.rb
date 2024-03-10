class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products=Product.all
  end

  def new
    @product=Product.new
  end
  
  def create
      @product=Product.new(product_params)
      if @product.save
       redirect_to '/'
    else
       render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
       redirect_to '/'
    else
       render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to '/'
  end

  
  def update_stock
    @product = Product.find(params[:id])
    direction = params[:direction]
    if direction == "up"
      @product.stock += 1
    elsif direction == "down"
      @product.stock -= 1 if @product.stock > 0
    end
    @product.save
    respond_to do |format|
      format.js
      format.html { redirect_back fallback_location: root_path }
    end
  end
  

  private
  def product_params
      params.require(:product).permit(:title, :stock, :price, :memo, :image, :category_id).merge(user_id: current_user.id)
  end
end

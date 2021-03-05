class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @products = Product.page(params[:page]).per(6)
  end

  def show
    @product = Product.find(params[:id])
    @post_comment = PostComment.new
  end

  def new
    @product = Product.new
    @product.photos.build
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to product_path(@product), notice: '投稿に成功しました'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    if @product.user != current_user
      redirect_to products_path, alert: '不正なアクセスです'
    end
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product), notice: '更新に成功しました'
    else
      render :edit
    end
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:title, :body, :seller, :cost, :since_when, photos_images: [])
  end
end

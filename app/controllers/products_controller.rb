class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @products = Product.page(params[:page]).per(6)
    @search = Product.ransack(params[:q])        #検索機能1/2
    @search_products = @search.result            #検索機能1/2
    # if params[:tag_name]
    #   @products = Product.tagged_with("#{params[:tag_name]}")
    # end
  end

  def show
    @product = Product.find(params[:id])
    @post_comment = PostComment.new
  end

  def new
    @product = Product.new
    @product.photos.new
    @product.merits.build
    @product.demerits.build
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
    if @product.update(edit_product_params)
      #pp product_params[:photos_images]
      product_params[:photos_images].each do | img |
        if img != "[]"
          pp img.tempfile
          @product.photos.new(image: File.open(img.tempfile))
          @product.save
        end
      end
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
  
  def destroy_photo
    Photo.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def product_params
    params.require(:product).permit(:title, :body, :seller, :cost, :since_when, :tag_list, photos_images: [], merits_attributes: [:id, :product_id, :advantage, :_destroy], demerits_attributes: [:id, :product_id, :disadvantage, :_destroy])
  end
  
  def edit_product_params
    params.require(:product).permit(:title, :body, :seller, :cost, :since_when, :tag_list, merits_attributes: [:id, :product_id, :advantage, :_destroy], demerits_attributes: [:id, :product_id, :disadvantage, :_destroy])
  end
end

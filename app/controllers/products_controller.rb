class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @users = User.where(is_valid: false)                                                                                             #ユーザー論理削除9/┓
    @products = Product.where.not(user_id: @users).order(created_at: :desc).page(params[:page]).per(9)                               #ユーザー論理削除9/(.all→.where.not(user_id: @users)
    #検索機能1/3ここから
    title_or_body_cont_all = params[:q]['title_or_body_cont_all'] if params[:q].present? && params[:q]['title_or_body_cont_all'].present?
    params[:q]['title_or_body_cont_all'] = params[:q]['title_or_body_cont_all'].split(/[\p{blank}\s]+/) if params[:q].present? && params[:q]['title_or_body_cont_all'].present?
    @search = Product.ransack(params[:q])
    @search_products = @search.result.where.not(user_id: @users).order(created_at: :desc).page(params[:page]).per(9)                          #ユーザー論理削除  (.all→.where.not(user_id: @users)
    params[:q]['title_or_body_cont_all'] = title_or_body_cont_all if params[:q].present? && params[:q]['title_or_body_cont_all'].present?
    if params[:q].present?
      render 'result'
    else
      render 'index'
    end
    #検索機能1/3ここまで

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
    @product.merits.build                                                           #cocoonで'メリット'機能実装3/6
    @product.demerits.build                                                        #cocoonで'デメリット'機能実装3/6
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
    redirect_to user_path(current_user.id)                                    #マイページにリダイレクト
  end

  def destroy_photo
    Photo.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def product_params
    params.require(:product).permit(:title, :body, :seller, :cost, :since_when, :period_of_use, :reference, :store_name, :tag_list, photos_images: [], merits_attributes: [:id, :product_id, :advantage, :_destroy], demerits_attributes: [:id, :product_id, :disadvantage, :_destroy])
  end

  def edit_product_params
    params.require(:product).permit(:title, :body, :seller, :cost, :since_when, :period_of_use, :reference, :store_name, :tag_list, merits_attributes: [:id, :product_id, :advantage, :_destroy], demerits_attributes: [:id, :product_id, :disadvantage, :_destroy])
  end
end

# ストロングパラメーター内
# merits_attributes: [:id, :product_id, :advantage, :_destroy]                                   #cocoonで'メリット'機能実装4/6
# demerits_attributes: [:id, :product_id, :disadvantage, :_destroy]                              #cocoonで'デメリット'機能実装4/6
# :tag_list                                                                                     #タグ機能2/7?
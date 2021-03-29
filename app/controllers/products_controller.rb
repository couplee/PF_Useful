class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @users = User.where(is_valid: false)                                                                                             # 論理削除でユーザー退会13/17┓
    @products = Product.where.not(user_id: @users).order(created_at: :desc).page(params[:page]).per(9)                               # 論理削除でユーザー退会13/17┛(.all→.where.not(user_id: @users)
    # 検索機能1/3ここから
    if params[:q].present? && params[:q]['title_or_body_cont_all'].present?
      title_or_body_cont_all = params[:q]['title_or_body_cont_all']
    end
    if params[:q].present? && params[:q]['title_or_body_cont_all'].present?
      params[:q]['title_or_body_cont_all'] =
        params[:q]['title_or_body_cont_all'].split(/[\p{blank}\s]+/)
    end
    @search = Product.ransack(params[:q])
    @search_products = @search.result(distinct: true).where.not(user_id: @users).page(params[:page]).per(9)       # ransack子モデル(like)の検索1/4(distinct: true(重複防止))→   # 論理削除でユーザー退会16/17(.all→.where.not(user_id: @users)
    if params[:q].present? && params[:q]['title_or_body_cont_all'].present?
      params[:q]['title_or_body_cont_all'] =
        title_or_body_cont_all
    end
    if params[:q].present?
      render 'result'
    else
      render 'index'
    end
    # 検索機能1/3ここまで
  end

  def show
    @product = Product.find(params[:id])
    @post_comment = PostComment.new
  end

  def new
    @product = Product.new
    @product.photos.new # refileで(複数の)画像投稿3/7
    @product.merits.build # cocoonで'メリット'機能実装3/6
    @product.demerits.build # cocoonで'デメリット'機能実装3/6
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
    redirect_to products_path, alert: '不正なアクセスです' if @product.user != current_user
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(edit_product_params)
      product_params[:photos_images].each do |img|                                                            # refileで(複数の)画像投稿7/7┓
        next unless img != '[]'

        pp img.tempfile
        @product.photos.new(image: File.open(img.tempfile))                                                   # refileで(複数の)画像投稿7/7┛
        @product.save
      end
      redirect_to product_path(@product), notice: '更新に成功しました'
    else
      render :edit
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to user_path(current_user.id) # マイページにリダイレクト
  end

  def destroy_photo
    Photo.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def product_params
    params.require(:product).permit(:title, :body, :seller, :cost, :since_when, :period_of_use, :reference,
                                    :store_name, :tag_list, photos_images: [], merits_attributes: %i[id product_id advantage _destroy], demerits_attributes: %i[id product_id disadvantage _destroy])
  end

  def edit_product_params
    params.require(:product).permit(:title, :body, :seller, :cost, :since_when, :period_of_use, :reference,
                                    :store_name, :tag_list, merits_attributes: %i[id product_id advantage _destroy], demerits_attributes: %i[id product_id disadvantage _destroy])
  end
end

# ストロングパラメーター内
# photos_images: []                                                                         #refileで(複数の)画像投稿4/7
# merits_attributes: [:id, :product_id, :advantage, :_destroy]                                   #cocoonで'メリット'機能実装4/6
# demerits_attributes: [:id, :product_id, :disadvantage, :_destroy]                              #cocoonで'デメリット'機能実装4/6
# :tag_list                                                                                     #タグ機能2/6

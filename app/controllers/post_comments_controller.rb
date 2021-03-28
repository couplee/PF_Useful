class PostCommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @post_comment = current_user.post_comments.new(post_comment_params)
    @post_comment.product_id = @product.id
    unless @post_comment.save                                                                                       #コメント空白禁止3/5┓
      render 'error'                                                                                                #コメント空白禁止3/5┛
    # redirect_to product_path(product)                                                                 <!--コメント機能"投稿"非同期通信4/5-->
    end
  end
  
  def destroy
    @product = Product.find(params[:product_id])
    PostComment.find_by(id: params[:id],product_id: params[:product_id]).destroy
    # redirect_to product_path(params[:product_id])                                                      <!--コメント機能"削除"非同期通信1/3-->
  end
  
  private
  
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end

class PostsController < ApplicationController
  
  def index
    @posts = @q.result(distinct: true).page(params[:page])
  end

  def show
    @post = current_user.posts.find(params[:id])
  end
 
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    post.update!(post_params)
    redirect_to posts_url, notice:"投稿「#{post.name}」を更新しました。"
  end
  
  def destroy
   post = current_user.posts.find(params[:id])
   post.destroy
   redirect_to posts_url, notice:"投稿「#{post.name}」を削除しました。"
  end  
  
  def create
    post = Post.new(post_params.merge(user_id: current_user.id))
    post.save!
    redirect_to posts_url, notice: "投稿「#{post.name}」を登録しました。"
  end
  
  
  private
  
  def post_params
    params.require(:post).permit(:name, :description)
  end

end
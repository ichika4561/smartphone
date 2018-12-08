class PostsController < ApplicationController
  def index
    @posts= Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new

  end

  def edit
  end
  
  def updated_at
    post = Post.find(params[:id])
    post.update!(pask_params)
    redirect_to posts_url, notice:"投稿「#{post.name}」を更新しました。"
  end
  
  def destroy
   post = Post.find(params[:id])
   post.destroy
   redirect_to posts_url, notice:"投稿「#{post.name}」を削除しました。"
  end  
  
  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_url, notice: "投稿「#{post.name}」を登録しました。"
  end
  
  private
  
  def post_params
    params.require(:post).permit(:name, :description)
  end
  
end

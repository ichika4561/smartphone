class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end
  
  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_url, notise: "投稿「#{post.name}」を登録しました。"
  end

  private

  def post_params
    params.require(:post).permit(:name, :description)
  end

end

class PostsController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.limit(25)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to blog_index_url, notice: "Post was successfully added."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Updates have been saved"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, alert: "Post was successfully deleted."
  end

  private
  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end

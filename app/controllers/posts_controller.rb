class PostsController < ApplicationController
  before_action :private_access, except: [:index, :show]

  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path, notice: "#Freshtrack publicado con éxito"
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "Editaste tu #Freshtrack con Éxito"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path, notice: "Eliminaste tu post :/"
  end

  private
  def post_params
    params.require(:post).permit(:name, :url, :description)
  end
end

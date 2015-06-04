class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params.require(:post).permit(:title, :body, :published_on)
    # @post.title = params[:post][:title]
    # @post.body = params[:post][:body]
    # @post.published_on = params[:post][:published_on]

    if @post.save
      redirect_to :root
    else
      # if post did not save (errors)
      render :new
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    if @post.update params.require(:post).permit(:title, :body, :published_on)
      redirect_to :post
    else
      # did not save
      render :edit
    end
  end

  def delete
    @post = Post.find params[:id]
    @post.destroy
    redirect_to :root
  end
end

class PostsController < ApplicationController
  def index
    @posts = Post.all
    @published_posts = @posts.select do |post|
       post.published_on < Time.now
    end
  end

  def show
    @post = Post.find params[:id]
  end
end

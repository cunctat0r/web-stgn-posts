# Posts controller
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index; end

  def new

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show; end

  def update; end

  def destroy; end

  private

  def post_params
    params.require(:post).permit(:num_tower, :line_name)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

# Posts controller
class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(
      :num_tower,
      :line_name,
      force_sensors_attributes: [:id, 
                                 :sensor_number, 
                                 :phase, 
                                 :chain, 
                                 :_destroy,
                                 force_limits_set_attributes: [
                                   :id,
                                   :force_sensor_id,
                                   :free_weight,
                                   :detection_limit,
                                   :warning_limit,
                                   :alarm_limit,
                                   :_destroy
                                 ]
                                ],
      temperature_sensors_attributes: [:id, :sensor_number, :phase, :chain, :_destroy]
    )
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

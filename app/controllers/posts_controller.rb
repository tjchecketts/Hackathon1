class PostsController < ApplicationController
  before_action :set_user
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = @user.posts
  end

  def show
  end

  def new
    @post = @user.posts.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @post = @user.posts.new

    if @post.save
      redirect_to [@user, @post]
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to [@user, @post]
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to user_posts_path
  end

  private
    def set_user
      @user = current_user
    end

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:name, :body)
    end
end

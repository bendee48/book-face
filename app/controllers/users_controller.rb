class UsersController < ApplicationController
  helper_method :friends_already?

  def index
    @users = User.all
  end

  def show
    @user = User.includes(:friends).find(params[:id])
    @post = Post.new
    @posts = @user.posts
  end
end

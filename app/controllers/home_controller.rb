class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.order('created_at DESC')
  end

  def wall
    @posts = current_user.posts
  end
end

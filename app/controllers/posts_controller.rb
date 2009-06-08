class PostsController < ApplicationController
  
  before_filter :find_blog
  
  def index
    @posts = Post.find(:all, :limit => 10, :order => 'created_at DESC')
    @posts = Post.paginate :page => params[:page], :per_page => 2
  end

  def show
    @post = Post.find(params[:id])
  end
  
protected
    
  def find_blog
    @blog = Blog.first
  end
  
end

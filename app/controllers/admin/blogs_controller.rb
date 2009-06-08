class Admin::BlogsController < ProtectedController
  
  def new
    @blog = Blog.new
  end
  
  def edit
    @blog = Blog.find(params[:id])
  end
  
  def create
    @blog = Blog.new(params[:blog])
    @blog.save
    redirect_to :action => 'index'
  end
  
  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(params[:blog])
      redirect_to :controller => 'admin/posts', :action => 'index'
    else
      redirect_to :action => 'edit'
    end
  end
  
  def index
    @blogs = Blog.all
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
  end
  
end

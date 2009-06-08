class Admin::PostsController < ProtectedController
  
  before_filter :find_blog
  
  def new
     @post = Post.new
     respond_to do |format|
       format.html
       format.xml
     end
   end

   def edit
     @post = Post.find(params[:id])
     @photos = Photo.find(:all)
   end
   
   def update
     @post = Post.find(params[:id])
     if @post.update_attributes(params[:post])
       redirect_to([:admin, @post])
     else
       redirect_to :action => 'edit'
     end
   end
   
   def create
     @post = Post.new(params[:post])   
     @post.blog = @blog    
     if @post.save
       redirect_to edit_admin_post_path(@post)
     else
       render :action => 'new'
     end
   end

   def index
     @posts = Post.find(:all, :limit => 10, :order => 'created_at DESC')
     @posts = Post.paginate :page => params[:page], :per_page => 2
   end

   def show
     @post = Post.find(params[:id])
   end

   def destroy
     @post = Post.find(params[:id])
     @post.destroy
     redirect_to :action => 'index'
   end
   
   protected
   
   def find_blog
     @blog = Blog.first
   end
   
end

class Admin::PhotosController < ProtectedController
  def new
    @photo = Photo.new
  end
  
  def create    
    if @photo = Photo.create(params[:photo])
      redirect_to :action => 'edit', :id => @photo.id
    else
      render :action => "new"
    end
  end
  
  def edit
    @photo = Photo.find(params[:id])
    @works = Work.find(:all)
  end 
  
  def update
     @photo = Photo.find(params[:id])
     if @photo.update_attributes(params[:photo])
       redirect_to :controller => 'admin/works'
     else
       redirect_to :action => 'edit'
     end
   end
   
  def index
    @photos = Photo.all
  end
  
  def show
    @photo = Photo.find(params[:id]) 
     @works = Work.find(:all)
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to :action => 'index'
  end
  
end

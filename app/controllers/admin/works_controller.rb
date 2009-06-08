class Admin::WorksController < ProtectedController
  
  before_filter :find_portfolio
  
  def new
    @work = Work.new
  end
  
  def create
    @work = Work.new(params[:work])
    @work.portfolio = @portfolio
    @work.save
    redirect_to([:admin, @work])
  end
  
  def edit 
    @work = Work.find(params[:id])
  end
  
  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(params[:work])
      redirect_to([:admin, @work])
    else
      redirect_to :action => 'edit'
    end
  end
  
  def index
    @works = Work.find(:all, :limit => 10, :order => 'created_at DESC')
  end
  
  def show
    @work = Work.find(params[:id])
    @photos = @work.photos
  end
  
  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to :action => 'index'
  end
  
  protected
  
  def find_portfolio
    @portfolio = Portfolio.find(:first)
  end
  
end

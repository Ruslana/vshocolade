class Admin::PortfoliosController < ProtectedController
  
  def new
    @portfolio = Portfolio.new
  end
  
  def create
    @portfolio = Portfolio.new(params[:portfolio])
    @portfolio.save
    redirect_to :action => 'index'
  end
  
  def index
    @portfolios = Portfolio.all
  end
  
  def edit
    @portfolio = Portfolio.find(params[:id])
  end
  
  def update
    @portfolio = Portfolio.find(params[:id])
    if @portfolio.update_attributes(params[:portfolio])
      redirect_to :controller => 'admin/works', :action => 'index'
    else
      redirect_to :action => 'edit'
    end
  end
  
  def show
    @portfolio = Portfolio.find(params[:id])
  end
  
  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
  end
  
end

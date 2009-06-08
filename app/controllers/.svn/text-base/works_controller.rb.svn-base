class WorksController < ApplicationController
    
  before_filter :find_portfolio

  def index
    @works = Work.find(:all, :limit => 10, :order => 'created_at DESC')
  end

  def show
    @work = Work.find(params[:id])
    @photos = @work.photos
  end
  
  protected

  def find_portfolio
   @portfolio = Portfolio.find(:first)
  end
   
end

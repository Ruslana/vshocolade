class CommentsController < ApplicationController
 
  def new
     @comment = Comment.new
   end

   def create
     @comment = Comment.new(params[:comment])    
     @post = Post.find(params[:comment][:post_id])
     @comment.post = @post
     @comment.save!
     redirect_to(@comment)
   end
   
   def edit
     @comment = Comment.find(params[:id])
   end
   
   def update
      @comment = Comment.find(params[:id])
      if @comment.update_attributes(params[:comment])
        redirect_to(@comment)
      else
        redirect_to :action => 'edit'
      end
   end
   
   def show
     @comment = Comment.find(params[:id]) 
   end
   
   def index
     @comments = Comment.all
   end
  
 
end

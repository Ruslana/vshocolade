class Portfolio < ActiveRecord::Base
  
  has_many :works
  
  validates_presence_of :title, :description, :author, :email_author
  
end

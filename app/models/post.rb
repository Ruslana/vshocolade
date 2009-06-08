class Post < ActiveRecord::Base
  
  belongs_to :blog
  has_and_belongs_to_many :photos, :join_table => 'posts_photos'
  has_many :comments
  
  validates_presence_of :title, :date, :body
  
end

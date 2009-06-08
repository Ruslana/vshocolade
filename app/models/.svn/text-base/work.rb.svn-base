class Work < ActiveRecord::Base
  
  belongs_to :portfolio
  has_and_belongs_to_many :photos, :join_table => 'works_photos'
  
  validates_presence_of :title, :signature
  
end

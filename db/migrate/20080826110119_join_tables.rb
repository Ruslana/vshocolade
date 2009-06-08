class JoinTables < ActiveRecord::Migration
  def self.up
    create_table :works_photos, :id => false do |t|
      t.integer :work_id
      t.integer :photo_id
    end
    
    create_table :categories_photos, :id => false do |t|
      t.integer :category_id
      t.integer :photo_id
    end
    
  end

  def self.down
    drop_table :works_photos
    drop_table :categories_photos
  end
end

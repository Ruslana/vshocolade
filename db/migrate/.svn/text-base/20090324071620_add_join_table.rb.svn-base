class AddJoinTable < ActiveRecord::Migration
  def self.up
    create_table :posts_photos, :id => false do |t|
      t.integer :post_id
      t.integer :photo_id
    end
  end

  def self.down
     drop_table :posts_photos
  end
end

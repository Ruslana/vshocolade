class DropTable < ActiveRecord::Migration
  def self.up
    drop_table :categories
    drop_table :categories_photos
  end

  def self.down
    create_table :categories, :id => false do |t|
      t.string :title
    end
     create_table :categories_photos, :id => false do |t|
        t.integer :category_id
        t.integer :photo_id
      end
  end
end

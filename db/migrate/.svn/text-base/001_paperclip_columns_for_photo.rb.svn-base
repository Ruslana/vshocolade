class PaperclipColumnsForPhoto < ActiveRecord::Migration
  def self.up
    rename_column :photos, :name, :file_file_name
    rename_column :photos, :content_type, :file_content_type
    add_column :photos, :file_file_size, :integer
    add_column :photos, :file_updated_at, :timestamp
  end

  def self.down
    remove_column :photos, :file_updated_at
    remove_column :photos, :file_file_size
    rename_column :photos, :file_content_type
    rename_column :photos, :file_file_name
  end
end

class RenamePostId < ActiveRecord::Migration
  def self.up
    rename_column :works, :post_id, :portfolio_id
  end

  def self.down
    rename_column :works, :portfolio_id
  end
end

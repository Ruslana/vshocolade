class CreatePortfolios < ActiveRecord::Migration
  def self.up
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :email_author

      t.timestamps
    end
  end

  def self.down
    drop_table :portfolios
  end
end

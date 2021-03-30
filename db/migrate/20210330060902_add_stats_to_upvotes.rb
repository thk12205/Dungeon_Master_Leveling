class AddStatsToUpvotes < ActiveRecord::Migration[6.0]
  def change
    add_column :upvotes, :str, :integer
    add_column :upvotes, :dex, :integer
    add_column :upvotes, :con, :integer
    add_column :upvotes, :int, :integer
    add_column :upvotes, :wis, :integer
    add_column :upvotes, :cha, :integer
  end
end

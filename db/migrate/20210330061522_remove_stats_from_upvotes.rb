class RemoveStatsFromUpvotes < ActiveRecord::Migration[6.0]
  def change
    remove_column :upvotes, :str, :integer
    remove_column :upvotes, :dex, :integer
    remove_column :upvotes, :con, :integer
    remove_column :upvotes, :int, :integer
    remove_column :upvotes, :wis, :integer
    remove_column :upvotes, :cha, :integer
  end
end

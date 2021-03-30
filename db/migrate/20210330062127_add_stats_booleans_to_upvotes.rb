class AddStatsBooleansToUpvotes < ActiveRecord::Migration[6.0]
  def change
    add_column :upvotes, :str, :boolean
    add_column :upvotes, :dex, :boolean
    add_column :upvotes, :con, :boolean
    add_column :upvotes, :int, :boolean
    add_column :upvotes, :wis, :boolean
    add_column :upvotes, :cha, :boolean
  end
end

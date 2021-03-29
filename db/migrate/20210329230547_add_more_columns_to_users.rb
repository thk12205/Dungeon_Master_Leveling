class AddMoreColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :quote, :string
    add_column :users, :alignment, :string
    add_column :users, :games, :string
    add_column :users, :gold, :integer
    add_column :users, :exp, :integer
    add_column :users, :str, :integer
    add_column :users, :dex, :integer
    add_column :users, :con, :integer
    add_column :users, :int, :integer
    add_column :users, :wis, :integer
    add_column :users, :cha, :integer
    add_column :users, :armor_rating, :integer
  end
end

class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.string :img_url
      t.string :source
      t.integer :category_id

      t.timestamps
    end
  end
end
